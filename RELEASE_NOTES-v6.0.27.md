# TEESimulator-MapleSU v6.0.27

Wires the diagnostics toggle to real logging and keeps the export path from v6.0.26.

## Changed

- **The verbose toggle now does something.** When `/data/adb/tricky_store/debug-on`
  exists, the injected library logs every Soter transaction it routes:
  `SOTER-SOCK TX code=… uid=… pid=… tx=… bytes=… flags=…`.
  The flag is read per transaction, so the WebUI can switch it on and off without a
  reboot.
- Native library rebuilt reproducibly (`5bd635b9…`, two build directories, identical
  SHA-256).

## Diagnostics panel (from v6.0.26)

- Toggle writes/removes `debug-on`.
- Export collects a redacted bundle into `/sdcard/Download/teesim-diag-<timestamp>.txt`
  (falls back to `/data/local/tmp`): module version, `ksu_status`, Soter route,
  keystore2/soterserver injection counts, `TEESimulator` and `MPL-SOTER` log tails,
  AVC denials. Serial-like values and `android_id` are redacted.

## Notes

- No keybox is included in this archive; without one the interceptor is a no-op.
- Extra logging increases log volume; turn it off after reproducing an issue.

## Checksums

See the attached `SHA256SUMS.txt`.
