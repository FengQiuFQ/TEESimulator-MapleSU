# TEESimulator-MapleSU v6.0.30

Update delivery: the module can now tell root managers where to look for new versions.

## Added

- `module.prop` carries `updateJson=https://raw.githubusercontent.com/FengQiuFQ/TEESimulator-MapleSU/main/update.json`.
  KernelSU and Magisk read this key and use it to check for updates in their module
  lists instead of requiring a manual download.
- `update.json` is published in the repository root and points at the current release
  asset, its `version`/`versionCode` and the changelog.

## Changed

- `author` in `module.prop` no longer mentions the private host build; it reads
  `TEESimulator-RS / MapleSU`.
- Soter injector poll tightened from 1000 ms to 400 ms, with one retry when a
  just-started saterserver is still finishing linker initialisation (from v6.0.29
  sources, first shipped here).

## Notes

- **This archive contains no keybox.** Place your own at
  `/data/adb/tricky_store/keybox.xml`; until then the WebUI shows the “未配置” banner and
  the interceptor is a no-op by design.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
