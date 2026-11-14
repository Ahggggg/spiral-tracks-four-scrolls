#!/bin/bash
# fetch_tracks.sh RELEASE_URL SCROLL DEST
#   Download one scroll's spiral track set from this repository's GitHub release and lay it out the way
#   dl.ash2txt.org/datasets/spiral_datasets does, so a screening script can read it from a folder:
#     DEST/<SCROLL>/<volume id>/tracks/<SCROLL>_<volume id>_surface_m7_L0_th0.2.dbm
#     DEST/<SCROLL>/<volume id>/tracks/<SCROLL>_<volume id>_surface_m7_L0_th0.2.dbm.vctracks/<9 files>
#   Example:
#     bash fetch_tracks.sh https://github.com/OWNER/REPO/releases/download/v1 PHerc1545 /data/spiral_tracks
#     TRACKS_BASE=file:///data/spiral_tracks bash erwin_data.sh PHerc1545 5300 6800 ACW umbilicus_PHerc1545_drobkov.json
#   GitHub release assets cannot hold folders, so the nine store files are published as <SCROLL>__vctracks__<name>.
#   Sizes are checked against the server; SHA-256 sums are in MANIFEST.md. SCROLL: PHerc1203 PHerc1218 PHerc1545 PHerc0846B.
set -euo pipefail
REL=${1:?release url}; S=${2:?scroll}; DEST=${3:?destination folder}
case $S in
  PHerc1545)  VID=20250821151648 ;;
  PHerc1218)  VID=20250521120456 ;;
  PHerc1203)  VID=20250820131727 ;;
  PHerc0846B) VID=20250804142305 ;;
  *) echo "unknown scroll $S (PHerc1203, PHerc1218, PHerc1545, PHerc0846B)"; exit 64 ;;
esac
P=${S}_${VID}_surface_m7_L0_th0.2
T=$DEST/$S/$VID/tracks
mkdir -p "$T/$P.dbm.vctracks"
get() {   # get ASSET FILE: resume until the size equals the server's
  local url=$REL/$1 want
  want=$(curl -sIL "$url" | tr -d '\r' | awk 'tolower($1)=="content-length:"{v=$2} END{print v}')
  for t in 1 2 3 4 5 6; do
    [ -n "$want" ] && [ -f "$2" ] && [ "$(stat -c %s "$2")" = "$want" ] && { echo "ok $1 $want"; return 0; }
    curl -fL --retry 3 -C - -sS -o "$2" "$url" || sleep $((t * 5))
  done
  [ -n "$want" ] && [ "$(stat -c %s "$2" 2>/dev/null)" = "$want" ] && { echo "ok $1 $want"; return 0; }
  echo "DOWNLOAD FAILED $url ($(stat -c %s "$2" 2>/dev/null)/$want)"; return 1
}
for f in arclengths.f64 coordinates.i32 family_codes.i8 header.bin metadata.json offsets.i64 source_ids.u64 tortuosities.f64 z_bounds.i32; do
  get "${S}__vctracks__$f" "$T/$P.dbm.vctracks/$f"
done
get "$P.dbm" "$T/$P.dbm"
[ -n "${WITH_CROSSINGS:-}" ] && get "$P.dbm.crossings.npz" "$T/$P.dbm.crossings.npz"
# the store records its source file's modification time; restore it so the fitter accepts the pair
python3 - "$T" "$P" <<'PY'
import json, os, sys
t, p = sys.argv[1], sys.argv[2]
m = json.load(open(f'{t}/{p}.dbm.vctracks/metadata.json')); name, size, mt = m['source_db_signature'][0]
path = f'{t}/{name}'
assert os.path.getsize(path) == size, (os.path.getsize(path), size)
os.utime(path, ns=(mt, mt)); print('source file time restored:', name, size)
PY
echo "TRACKS_OK $T"
