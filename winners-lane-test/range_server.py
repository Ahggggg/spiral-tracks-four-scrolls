"""Static file server with HTTP Range support, for the X-265 test of the winners' erwin_data.sh (their script reads the first
64 KiB of the .dbm with a Range header; Python's http.server ignores Range). Serves <root> on 127.0.0.1:<port>.
    python3 range_server.py <root> <port>
"""
import os
import re
import sys
from http.server import HTTPServer, SimpleHTTPRequestHandler


class H(SimpleHTTPRequestHandler):
    def log_message(self, fmt, *args):
        sys.stderr.write("%s %s\n" % (self.command, fmt % args))

    def do_GET(self):
        rng = self.headers.get("Range")
        path = self.translate_path(self.path)
        if not rng or not os.path.isfile(path):
            return super().do_GET()
        m = re.match(r"bytes=(\d*)-(\d*)$", rng.strip())
        size = os.path.getsize(path)
        if not m or (m.group(1) == "" and m.group(2) == ""):
            return super().do_GET()
        if m.group(1) == "":                      # suffix range: last N bytes
            start, end = max(0, size - int(m.group(2))), size - 1
        else:
            start = int(m.group(1)); end = min(size - 1, int(m.group(2))) if m.group(2) else size - 1
        if start >= size:
            self.send_response(416); self.send_header("Content-Range", f"bytes */{size}"); self.end_headers(); return
        self.send_response(206)
        self.send_header("Content-Type", "application/octet-stream")
        self.send_header("Accept-Ranges", "bytes")
        self.send_header("Content-Range", f"bytes {start}-{end}/{size}")
        self.send_header("Content-Length", str(end - start + 1))
        self.end_headers()
        with open(path, "rb") as f:
            f.seek(start); left = end - start + 1
            while left > 0:
                b = f.read(min(1 << 20, left))
                if not b:
                    break
                self.wfile.write(b); left -= len(b)


if __name__ == "__main__":
    os.chdir(sys.argv[1])
    HTTPServer(("127.0.0.1", int(sys.argv[2])), H).serve_forever()
