# Manifest

Every file attached to release `v1` (77 files, 19,793,019,766 bytes = 18.43 GiB), with its size and SHA-256.
The same sums are in `SHA256SUMS.txt` (`sha256sum -c SHA256SUMS.txt` in the folder you downloaded into).

Download base: `https://github.com/Ahggggg/spiral-tracks-four-scrolls/releases/download/v1/<file>`

The nine files of each scroll's track store are published as `<scroll>__vctracks__<name>` because release assets cannot hold folders;
`fetch_tracks.sh` puts them back into the layout the fitter and the screening scripts expect.

| File | Bytes | SHA-256 | What it is |
|---|---:|---|---|
| `PHerc1545__vctracks__arclengths.f64` | 24,626,280 | `8db396642c0a73c7d5277ae75ae0448dd8089e5f9a90ab8b5a2429d74031e5bc` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/arclengths.f64 |
| `PHerc1545__vctracks__coordinates.i32` | 1,207,445,100 | `6e21cb5500e66d553495ea3dd17dc27effe322f7c5f7370e004e9e281fc63f8d` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/coordinates.i32 |
| `PHerc1545__vctracks__family_codes.i8` | 3,078,285 | `af271dd7c83c0b6037aee9a25c6d330025e975ff18267b367ee996ce0b1e0240` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/family_codes.i8 |
| `PHerc1545__vctracks__header.bin` | 64 | `e69d12dd9d8819569ad1793b71cc14ebf7f74b644cb5cbb312e727d2409c14f3` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/header.bin |
| `PHerc1545__vctracks__metadata.json` | 218 | `6092ea9a252a5f46cc5d1863322901c29c061714efb1f8c7d418e9db7170462e` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/metadata.json |
| `PHerc1545__vctracks__offsets.i64` | 24,626,288 | `9e665d4753ed541523a150226d66e7ee0b0863a32b23652e31c9ed71b9924d36` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/offsets.i64 |
| `PHerc1545__vctracks__source_ids.u64` | 24,626,280 | `6f00af3c6a705f504929e610e3f1875d82cfe031cd2480e1ff83ab0b85eb79b4` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/source_ids.u64 |
| `PHerc1545__vctracks__tortuosities.f64` | 24,626,280 | `ee288d6cb89637116eda1190ee17085f020d4aa733a72d38f113e238d7d33523` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/tortuosities.f64 |
| `PHerc1545__vctracks__z_bounds.i32` | 24,626,280 | `58d9cebaa6c58fa76c3753f6c5bb86e4bff8e8c9a56e1df6229fe9219f13368d` | PHerc1545 track store, band z5300-6800: PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.vctracks/z_bounds.i32 |
| `PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm` | 1,292,890,112 | `5d3d49c77d9d843899e3f3dd656d8054d1006511441234ef76db63cab2d557a0` | PHerc1545 source store the track store was packed from |
| `PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.crossings.npz` | 311,233,152 | `5a197b8830112996d02add876926ee1ba73d932d2e12066c39a6d943e40648f3` | PHerc1545 crossings cache |
| `PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.events.jsonl` | 10,932 | `2cb0a99f02ce59391a8f25db6d31859d679efd6f86c466a6b7de400853b60d28` | PHerc1545 extraction log |
| `PHerc1545_20250821151648_surface_m7_L0_th0.2.dbm.extract_done.json` | 438 | `7977b80e8480b2c5fff0c9e5d65a712741c2235f008987d4ef248993f08177e3` | PHerc1545 extraction parameters |
| `PHerc1545__umbilicus_PHerc1545_drobkov.json` | 15,026 | `c7a6a929471fdf7c0f71a15f7f3518016994c007eacca7bad288e4e4bf36c189` | PHerc1545 umbilicus (Alexey Drobkov, MIT) |
| `PHerc1545__r1545_z5300-6800_proof.json` | 1,539 | `425afffb47e3312148cb224409cf2c6a4022cc501795fd5c6bf3a7d79fedb532` | PHerc1545 job file used for the fit (runs only inside our pipeline; for reference) |
| `PHerc1218__vctracks__arclengths.f64` | 18,450,312 | `e8d552d71f1698b39c60e21a7a8d4c4e315003c1499779fde0f67feda2409aec` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/arclengths.f64 |
| `PHerc1218__vctracks__coordinates.i32` | 960,357,384 | `ae17b178c52cf8f953cd083571850a115babe8b860ea7db364828281e6e33209` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/coordinates.i32 |
| `PHerc1218__vctracks__family_codes.i8` | 2,306,289 | `152ed5654b178bf22cbc841c510b71073425d9a0e5efab20154841d00e97d663` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/family_codes.i8 |
| `PHerc1218__vctracks__header.bin` | 64 | `731ec4f5300e26b0aa1bb7fac1786e6eb68c2f61ea017a3743de120eac4d5a56` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/header.bin |
| `PHerc1218__vctracks__metadata.json` | 217 | `fdd1891f139913a0c2203a634aae33a8e5f8dd4b0d45eed29f7d21d33a9516d4` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/metadata.json |
| `PHerc1218__vctracks__offsets.i64` | 18,450,320 | `09f6e9b959fcf62578011c60d09455dd3b81be79be9bf9915ff14d44b4ee3c3e` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/offsets.i64 |
| `PHerc1218__vctracks__source_ids.u64` | 18,450,312 | `f2516f4e5675de68f33cda396517ea0bf46bf4acf809f9cb31c8f0a257937a47` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/source_ids.u64 |
| `PHerc1218__vctracks__tortuosities.f64` | 18,450,312 | `7f572be7320d5a5320c27ad6a2163400f6628a3cb71561d0e831bcce79d48d0c` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/tortuosities.f64 |
| `PHerc1218__vctracks__z_bounds.i32` | 18,450,312 | `e5a0fe167c40c215c28ffb895cecd453bac4e1c734f3ea64bd7e989c36f59f75` | PHerc1218 track store, band z6900-8400: PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.vctracks/z_bounds.i32 |
| `PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm` | 1,024,552,960 | `7cc3dd9e97a4160e9af10f3f26d3485826028c42ac89f53acfa8b4c56b9a34f2` | PHerc1218 source store the track store was packed from |
| `PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.crossings.npz` | 262,814,360 | `d96afb22ab25ca07601b4f169c56e4573ca6f777ba4d481fe423ff422ef52cac` | PHerc1218 crossings cache |
| `PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.events.jsonl` | 10,381 | `997f9c53823aadd19752190184449ea7b97c313fcb26f2c2a5cd9a9737cc1a2d` | PHerc1218 extraction log |
| `PHerc1218_20250521120456_surface_m7_L0_th0.2.dbm.extract_done.json` | 439 | `50b0ac8f39346cbd856f2b5136abdcf405a9878a628a37883490e133cc4dcde0` | PHerc1218 extraction parameters |
| `PHerc1218__umbilicus_PHerc1218_drobkov.json` | 14,760 | `4a375784575ae27bdd0c028d3b857f381c5b6481262a20fddfc807d881a59310` | PHerc1218 umbilicus (Alexey Drobkov, MIT) |
| `PHerc1218__r1218_z6900-8400_proof.json` | 1,538 | `127d5585b8f6d096ca1fcc95fc08847755376b374663833edcacfa4847f6434d` | PHerc1218 job file used for the fit (runs only inside our pipeline; for reference) |
| `PHerc1203__vctracks__arclengths.f64` | 14,019,168 | `8c70795c753a7c979a5280438e9b3ee8f1189aeb5fc1a09ccf677711dee8f837` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/arclengths.f64 |
| `PHerc1203__vctracks__coordinates.i32` | 1,184,888,244 | `998c81e9d10edbf00e5d0fed2720e232ff96647e64ee95bf0523844e7e87ca8f` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/coordinates.i32 |
| `PHerc1203__vctracks__family_codes.i8` | 1,752,396 | `21dc57e50520d4b290a495ee057cd55737d63304970ea23531f34942a83f15ec` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/family_codes.i8 |
| `PHerc1203__vctracks__header.bin` | 64 | `a912ccd3198498ed3d40fd05982e45a9df5b743f5b10904614c2ee085c634317` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/header.bin |
| `PHerc1203__vctracks__metadata.json` | 217 | `2509faac2508311bff517a4d5b683a9e0091da65585dcb8ef657ebaca8f0488a` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/metadata.json |
| `PHerc1203__vctracks__offsets.i64` | 14,019,176 | `f49b53fb7c65f62b9e5e6e6ed0216907dd0708ca01fcf079d899af9f38a5096c` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/offsets.i64 |
| `PHerc1203__vctracks__source_ids.u64` | 14,019,168 | `b3ce8d1a5062a5d8c8aebc910e53c891f8f9da95103678a0cfb5799d3b7c979e` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/source_ids.u64 |
| `PHerc1203__vctracks__tortuosities.f64` | 14,019,168 | `9af9ce38c461c102b54d5c764ef375555551aef6d862457f7e7e687cc21c207a` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/tortuosities.f64 |
| `PHerc1203__vctracks__z_bounds.i32` | 14,019,168 | `eaa0d8280ade971fc301008b7197f3b162a6f61a5e3e62575408b1f1970ddda1` | PHerc1203 track store, band z11500-13000: PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.vctracks/z_bounds.i32 |
| `PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm` | 1,234,370,560 | `56b399fdb053c92dd09f3bb69b973230362669a5f4687eb790880c8a874d0c48` | PHerc1203 source store the track store was packed from |
| `PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.crossings.npz` | 354,775,152 | `4d2fa6ac25b2eecb51f10645235a542219e3a30282a58d1129eae47e62d4bf90` | PHerc1203 crossings cache |
| `PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.events.jsonl` | 9,881 | `c3b719d14c056eb70cbd1886ed29abbb318f830de52c84913b37d1d5c505695c` | PHerc1203 extraction log |
| `PHerc1203_20250820131727_surface_m7_L0_th0.2.dbm.extract_done.json` | 440 | `40dabab1d024c4eb8e3d72a185b8acb83ec657c608dc71dc902399bae35fca83` | PHerc1203 extraction parameters |
| `PHerc1203__umbilicus_PHerc1203_drobkov.json` | 9,454 | `9c6986ad583d53a57a81b3faf6bf17031fb9fb63361aee9665ed680d16208a5c` | PHerc1203 umbilicus (Alexey Drobkov, MIT) |
| `PHerc1203__r1203_z11500-13000_proof.json` | 1,545 | `c55c5c952c2a234a14b9e24f8854db99fb84b0ee5e9bbf0b9a2fd20962a25ad2` | PHerc1203 job file used for the fit (runs only inside our pipeline; for reference) |
| `PHerc0846B__vctracks__arclengths.f64` | 32,399,744 | `2dbe9f454bc61a224778ec2113660a30467dc506aef675975500434a4773e04a` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/arclengths.f64 |
| `PHerc0846B__vctracks__coordinates.i32` | 1,655,087,520 | `3150301141ae6f4378c1082dff94e169c90dd6f782e94c272bfac32e5e6a96a5` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/coordinates.i32 |
| `PHerc0846B__vctracks__family_codes.i8` | 4,049,968 | `2b02b4bef215027e0429fd69e401e6f965ff8668e35c9f40ceb11df6bc3b3e87` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/family_codes.i8 |
| `PHerc0846B__vctracks__header.bin` | 64 | `87a01c95cbf37bd8f2b0bf41161b4fce1e7ae03b75aeb902db82d538d2eb6481` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/header.bin |
| `PHerc0846B__vctracks__metadata.json` | 219 | `e38e4f90e3db8341caf4cc5aefab0960f9fa6b9fd549624b6e6b15901c39ff20` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/metadata.json |
| `PHerc0846B__vctracks__offsets.i64` | 32,399,752 | `0ac9866ee6574ce8ab0f99fb53bf7e8f4e0fbf18bed740f2c308e171ba9b16fe` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/offsets.i64 |
| `PHerc0846B__vctracks__source_ids.u64` | 32,399,744 | `a17f065b58af2671ea302351ef444d8eb23d2d29e0acdd98704552bc1e17ca47` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/source_ids.u64 |
| `PHerc0846B__vctracks__tortuosities.f64` | 32,399,744 | `0e08411fb062e2f87218f32b3a542ab4d55eaaf173495e6f525978c8b143cac6` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/tortuosities.f64 |
| `PHerc0846B__vctracks__z_bounds.i32` | 32,399,744 | `037d45b4ff5232d0dc53d8a5f922090d1cbc43f2f252df70fd21dcaca7a52803` | PHerc0846B track store, band z11500-13000: PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.vctracks/z_bounds.i32 |
| `PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm` | 1,767,428,096 | `f8f2e089b3108a4878b4b8fb298c1d3afa9dfbf8971a6a22d23243f3024ce880` | PHerc0846B source store the track store was packed from |
| `PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.crossings.npz` | 418,515,652 | `169f4f84238e8965be90c5cf66d6c84fe8f672ced4a996d0a918c71e2d401c11` | PHerc0846B crossings cache |
| `PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.events.jsonl` | 12,743 | `468ff93f6f8aa3ac89d2de3130a9de2db7f618eb40acf3a2bb54c791e68ad086` | PHerc0846B extraction log |
| `PHerc0846B_20250804142305_surface_m7_L0_th0.2.dbm.extract_done.json` | 441 | `8cb486099fc6e90028f85e536cdf2cabc51a5518a40de8f4f0ccdf802e579cce` | PHerc0846B extraction parameters |
| `PHerc0846B__umbilicus_PHerc0846B_ngrid.json` | 48,357 | `c1dea1133173234d287f6a979a2c293a2e0dacfaec43677ef01eac46cbbbe14b` | PHerc0846B umbilicus (built by us from the public normal grids) |
| `PHerc0846B__r0846B_z11500-13000_proof.json` | 1,549 | `dc01883da888c5695dd1705ff204ed5e3d7ca89b278df577750fb0862b119597` | PHerc0846B job file used for the fit (runs only inside our pipeline; for reference) |
| `ink-maps-and-pictures.zip` | 83,623,785 | `0c320fdd5e1b12183ea72f508aba82148a05c3e45bb30e26d3dc2f491350d6fe` | ink maps (Reader V3, both layer orders) and proof pictures for all twelve windings |
| `PHerc0846B_proof_fit-flat-mesh-snap.zip` | 452,640,024 | `9f8774b475447cbe5618f118f098bcbf21349df3a6303a34d8b3426a5f2021a7` | PHerc0846B fit checkpoint, meshes, snap reports, flattened windings, logs |
| `PHerc0846B_proof_render-w069.zip` | 475,554,067 | `1f530ee34b6a45e187fdc7c07772ff1bc004009bbd51a89a611fc84b0b7b7afa` | PHerc0846B 31-layer render of winding w069 |
| `PHerc0846B_proof_render-w070.zip` | 483,336,853 | `a981e8a02590215370b3ef316bd39ab0afe9698bc7936228882645cb45e9f8a9` | PHerc0846B 31-layer render of winding w070 |
| `PHerc0846B_proof_render-w071.zip` | 489,321,189 | `b432d9118f68df56a7e52b0f9716d22a92d498b788333dbeb1b094ccc63342fa` | PHerc0846B 31-layer render of winding w071 |
| `PHerc1203_proof_fit-flat-mesh-snap.zip` | 314,825,773 | `fc7ebdf33e21bd737df0c8538b80809fe50907051148ea2b6a9a3387908e038c` | PHerc1203 fit checkpoint, meshes, snap reports, flattened windings, logs |
| `PHerc1203_proof_render-w069.zip` | 434,192,659 | `04edec0f6f3ba2cfdc363e0d4665f9d3781029a7b6e4c1595cf50a79db2c9e39` | PHerc1203 31-layer render of winding w069 |
| `PHerc1203_proof_render-w070.zip` | 431,282,539 | `28e363c04869c889f1f775ae677114bcf7573537d7e7ff1c3516cf8c82cd2d48` | PHerc1203 31-layer render of winding w070 |
| `PHerc1203_proof_render-w071.zip` | 434,378,753 | `d55b74f6d120a06fd9f3cd6c645c669fae7b48a7a87e85fa42134692a250baf7` | PHerc1203 31-layer render of winding w071 |
| `PHerc1218_proof_fit-flat-mesh-snap.zip` | 341,243,869 | `2d8043e0a6d4cfd50a54a93cd26b944e97f8bc7c14f91820d7843f61f1aa7444` | PHerc1218 fit checkpoint, meshes, snap reports, flattened windings, logs |
| `PHerc1218_proof_render-w069.zip` | 569,027,977 | `1977be741082589ceb88e565038ff5e6820f6933d0292c76ae06509b0fd277f7` | PHerc1218 31-layer render of winding w069 |
| `PHerc1218_proof_render-w070.zip` | 576,872,396 | `e72eb79853fdc2ffe1ec040c78da9b57830b41e4be1a72d54811baabe00e5a22` | PHerc1218 31-layer render of winding w070 |
| `PHerc1218_proof_render-w071.zip` | 586,373,202 | `8e85b9874026162bd8bc26123807482121ba4af5f4d87c0d8a7b1404e1765149` | PHerc1218 31-layer render of winding w071 |
| `PHerc1545_proof_fit-flat-mesh-snap.zip` | 364,277,822 | `14f415bc0b20c553479c632f61852c3b64fa172d154afbdcc74513bdf34e57c7` | PHerc1545 fit checkpoint, meshes, snap reports, flattened windings, logs |
| `PHerc1545_proof_render-w069.zip` | 531,303,676 | `0f06156dd3ba8bf2f211015fab77cb1cb2c53d031e33c1814b62a2b859e2203b` | PHerc1545 31-layer render of winding w069 |
| `PHerc1545_proof_render-w070.zip` | 540,034,992 | `4ebe8ad9851af7988e59e05a1df6886f22651d95bf2446bed96f2fe15066d3fb` | PHerc1545 31-layer render of winding w070 |
| `PHerc1545_proof_render-w071.zip` | 551,566,818 | `1f8832e9f7240b1d56ad627622ed4ee599116bb1e8f63f1bbc173c4ac1274a78` | PHerc1545 31-layer render of winding w071 |
| `meta-fix-2026-11-21.zip` | 815,132 | `5c7f3ae2513eb66486d485bc9ea4d8c8e851fc526adc138567663d5c869b958d` | Correction: 972 meta.json files of the fitted and snapped meshes with the true scale and area (see README) |
