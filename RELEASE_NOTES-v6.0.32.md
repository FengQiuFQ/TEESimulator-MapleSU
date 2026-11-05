# TEESimulator-MapleSU v6.0.32

Power, resetprop coexistence, and an opt-in key-takeover switch.

## Power

The Normal build no longer wakes the system every few seconds:

- **target watcher**: instead of `pm list packages -3` every 30 s (120 spawns/hour), it
  stats `/data/app` (one syscall) and only refreshes when packages actually changed,
  plus a 30-minute safety pass.
- **SoterBridge**: poll 1 s → 5 s. Registration does not depend on it — the injector calls
  `SoterBridge.kick()` synchronously after an injection.
- **SoterInjector**: poll 400 ms → 1.5 s, with a 500 ms fast window for the first 90 s
  after start so boot-time saterserver starts are still caught quickly.

## resetprop-style modules

- `service.sh` re-runs `hide_bootloader.sh` 45 s after boot, so our `ro.boot.*` values are
  the last writer when another module sets them later in boot.
- SELinux: the vendor perf HAL walks `/proc` and logs an avc denial for every
  `u:r:ksu:s0` entry. Grants added (search/read/getattr only):
  `allow vendor_hal_perf_default ksu:{dir,file,process}`.

## Experimental: force target apps to regenerate keys

New WebUI switch **强制重建目标应用密钥（实验）** (`/data/adb/tricky_store/key_takeover`).
When on, `createOperation` for an unknown KeyId from a uid listed in `target.txt`
answers `KEY_NOT_FOUND` instead of forwarding to the real HAL, so the app regenerates the
key through the simulator. Off by default; existing keys of that app may become
unusable.

Backend commands: `get key_takeover`, `set key_takeover <0|1>`; the diagnostic export
includes `[key_takeover]`.

## Build correctness

`make_p16.py` rebuilds `smali_tree` from `smali_base` on every run, which had silently
dropped hand-applied smali edits. The H03/G02/takeover changes now live in
`dex/stage_kt.py`, invoked by `make_p16` after the built-in stages, so the documented
build command always produces a dex with them.

## Notes

- **This archive contains no keybox.** Place your own at
  `/data/adb/tricky_store/keybox.xml`.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
