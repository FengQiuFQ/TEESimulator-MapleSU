# TEESimulator-MapleSU v6.0.26

Diagnostics release: the WebUI can now turn on verbose logging and export a redacted
log bundle without a PC or a separate debug build.

## Added

- **Diagnostics panel** in the WebUI:
  - **Verbose logging** toggle — writes `/data/adb/tricky_store/debug-on`, so the level
    can be changed without reinstalling anything;
  - **Export diagnostic logs** — collects the module version, `ksu_status`, the Soter
    route, keystore2/soterserver injection counts, the last 200 `TEESimulator` lines,
    120 `MPL-SOTER` lines and recent AVC denials into
    `/sdcard/Download/teesim-diag-<timestamp>.txt` (falls back to `/data/local/tmp`),
    and returns the path plus a short preview.
- Serial-like values and `android_id` are redacted in the exported file.
- `tools/collect_logs.sh` for users who prefer a shell.

## Backend

New WebUI backend commands: `get debug`, `set debug <0|1>`, `logs`.

## Notes

- The exported bundle never contains a keybox.
- Review the file before posting it in an issue.
- This archive contains **no keybox**; without one the interceptor is a no-op.

## Checksums

See the attached `SHA256SUMS.txt`.
