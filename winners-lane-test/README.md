# Test of the winners' data step on these tracks (2026-11-13)

What was run: `discovery/x_recipe_erwin/remote/erwin_data.sh` from `SirProdigle/pherc0306b-first-letters` at commit `feabff6`,
for PHerc. 1545, z 5300-6800, tracks stage only.

- `before_erwin_data_PHerc1545.txt`: the script as published. The nine store files are not on dl.ash2txt.org, so each ends in
  `DOWNLOAD FAILED` and the script stops with `tracks download failed`, exit code 1.
- `after_erwin_data_PHerc1545.txt`: the same script with the one-line `TRACKS_BASE` change (`diff_before_after.txt`), pointed at a
  local HTTP mirror in the dl.ash2txt.org layout (`range_server.py`; requests in `after_server_requests.txt`). All nine files
  arrive at the published sizes and the first 64 KiB of the `.dbm` is read with a Range request.
- `after_file_url_erwin_data_PHerc1545.txt`: the same, with `TRACKS_BASE=file:///...` pointing at a folder.

- `real_release_fetch_and_erwin_data_PHerc1545.txt` (2026-11-15, after publishing): `fetch_tracks.sh` from this repository against the
  real release, SHA-256 of the ten fetched files against `SHA256SUMS.txt`, then the script from the pull request branch with
  `TRACKS_BASE=file://` on that folder. Same two test-only edits as below.

Two test-only edits, not part of the proposed change: the script's hard-coded work directory was pointed at a scratch folder
(`diff_upstream_vs_test_copy.txt`), and the `aws` command was replaced by a stub that stops the run when the script reaches the
bucket downloads (lasagna, m7, CT). Because the stub answers the script's first bucket listing with nothing, the script prints
"no Lasagna used ... synthetic normals" just before it stops; that line is an artefact of the stub, not a fact about PHerc. 1545.

Not run with these tracks: the rest of the data step, the fit and the lane scripts of that repository.
