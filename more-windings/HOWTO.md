# Making more windings from a fit in this release

The four `*_proof_fit-flat-mesh-snap.zip` archives each hold one spiral fit with **all 120 fitted windings** (`w010` to `w129`) as tifxyz meshes, but only three of them (`w069`, `w070`, `w071`) snapped, flattened and rendered. This page says how the other windings are made. Two steps, both with other people's code:

```
fitted winding (in the archive)  ->  snap onto the surface prediction  ->  flatten
```

Ready-made results for PHerc. 1545 and PHerc. 1218 are release assets (`*_more-windings_snap-mesh*.zip`, see `MANIFEST.md`), so you only need this page for the other two scrolls or for a fit of your own.

## What you need

- The fit archive of the scroll, unzipped. The fitted windings are in
  `<Scroll>-proof/<job>/fit/<fit folder>/meshes/fitted_<job>/wNNN_<job>/` (`x.tif`, `y.tif`, `z.tif`, `meta.json`). Use the plain `wNNN_<job>` folders, not the `wNNN_spliced_<job>` ones.
- The scroll's m7 surface prediction (public, Vesuvius Challenge open-data bucket), level 0, at least for the z range of the fit plus a margin. We mirrored z ± 64 slices around the band (about 2 GB per scroll):

  | Scroll | Band (z) | Surface prediction |
  |---|---|---|
  | PHerc. 1545 | 5300-6800 | `PHerc1545/representations/predictions/surfaces/20250821151648-surface-20260413222639-surface-m7-L0-th0.2.zarr` |
  | PHerc. 1218 | 6900-8400 | `PHerc1218/representations/predictions/surfaces/20250521120456-surface-20260413222639-surface-m7-L0-th0.2.zarr` |
  | PHerc. 0846B | 11500-13000 | `PHerc0846B/representations/predictions/surfaces/20250804142305-surface-20260413222639-surface-m7-L0-th0.2.zarr` |
  | PHerc. 1203 | 11500-13000 | `PHerc1203/representations/predictions/surfaces/20250820131727-surface-20260413222639-surface-m7-L0-th0.2.zarr` |

- **Erwin Nieuwlaar's `snap_meshes.py`** from his PHerc. 343 recipe: <https://github.com/Nieuwlaar/pherc343-first-letters/blob/main/mesh/snap_meshes.py> (MIT; we used commit `e8370f1f`). It is his script, not ours. We ran it unchanged on Linux. On Windows, Python has no `fork`, so we replaced the worker pool by a plain loop: three lines, in `snap_meshes_windows.patch` here. The values are the same, it is only slower.
- **villa's Lasagna** (`ScrollPrize/villa`, `lasagna/fit.py`; we used villa `0fb38c45`) for the flattening, with its own config `lasagna/configs/flatten_fast_nofilter.json`.
- Python with `numpy`, `scipy`, `tifffile`, `zarr`, and PyTorch for Lasagna.

## 1. Snap

List the windings you want, one folder name per line:

```
w062_r1218_z6900-8400_proof
w063_r1218_z6900-8400_proof
```

Then:

```
SURF_ZARR=/data/PHerc1218_m7.zarr python snap_meshes.py \
    <...>/meshes/fitted_r1218_z6900-8400_proof  PHerc1218  /data/snap \
    --windings windings.txt --level 0
```

Each winding comes out as `/data/snap/wNNN_<job>/` (tifxyz), and `snap_report.tsv` gets one line per winding: the share of points with a predicted sheet nearby, the share snapped, and the median and 90th-percentile offset in voxels. On a laptop CPU this took 30 to 50 seconds per winding, one winding at a time.

**One thing to fix by hand.** The snap script copies `meta.json` from the fitted mesh, and the fit writes `"scale": [0.05, 0.05]` (20-voxel steps) although its meshes have steps of 23 to 31 voxels. So the snapped `meta.json` has the wrong scale and too small an area. The coordinates are right. If your tool reads the scale, set it to 1 / the median spacing between neighbouring points (columns, rows). The `meta.json` files in our `more-windings` archives are already corrected this way.

## 2. Flatten

Write a small input file per winding:

```json
{"external_surfaces": [{"path": "/data/snap/w062_r1218_z6900-8400_proof"}], "voxel_size_um": 8.64}
```

(`voxel_size_um` is 8.64 for PHerc. 1218 and 9.362 for the other three.) Then, from villa's `lasagna` folder:

```
python -u fit.py configs/flatten_fast_nofilter.json  w062_flatten_input.json  --device cuda  --out-dir /data/flat/w062
```

The flattened winding is the `flatten.tifxyz` folder under the output directory, on a regular 20-voxel grid (`scale` 0.05, which is correct here). That is what `vc_render_tifxyz` and the ink readers take.

**On an Intel GPU** (`--device xpu`) the compiled code paths of that config did not work for us, so we used the same config with three switches turned off (`compile_flatten`, `compile_flatten_combined`, `fused_flatten_adam_clamp`): `flatten_eager.json` here. On an Arc laptop GPU one winding took 200 to 300 seconds. We checked this route against the rented-GPU result on winding 070 of PHerc. 1545 before using it: the snapped points were identical, and the flattened mesh had 44,586 valid points against 44,558.

## What we did not check

- Only windings 069 to 071 were rendered and looked at closely by us on 1203 and 0846B. The extra windings of 1545 and 1218 were snapped and flattened by the same two steps; their snap reports are in the archives. The outer windings snap much less well than the middle ones, so check the report before using one. On PHerc. 1545 the share of points with a predicted sheet nearby is 0.92 to 0.94 in the middle (w040 to w099) and falls as low as 0.40 beyond w100. On PHerc. 1218 it is 0.87 to 0.95 from w015 to w094, drops from w095 on, and is only 0.20 to 0.52 from w099 to w129: those outer windings are in the archive for completeness, but fewer than half of their points found a sheet.
- We have not compared these windings with an independent reconstruction.
