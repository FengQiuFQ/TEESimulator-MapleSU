# TEESimulator-MapleSU v6.0.31

Two Demo 1.7 checks (H03 / G02) and Soter start-up.

## Fixed

- **G02 (label g): limited-use keys now stay exhausted.** When a software key reached
  `USAGE_COUNT_LIMIT = 0` the module only dropped its own cache entry while keystore2
  still owned the row, so `containsAlias()` could stay true and a later operation could
  be forwarded to the real HAL. Exhaustion now writes a durable tombstone; the
  `getKeyEntry` check is non-consuming (`contains` instead of `remove`) and the mark is
  cleared only when the alias is generated again.
- **H03 (label c): no forward window during generation.** A reader that calls
  `metadata(alias)` while `generateKey` is still running used to miss the cache and be
  forwarded to keystore2. The alias is now marked absent for the duration of
  `doSoftwareKeyGen`; the successful path clears the mark as soon as the cached response
  exists, so every read either sees “not found” (true at that moment) or the identical
  cached DER.

## Soter

- The injector itself now tries to start `com.tencent.soter.soterserver` when it is
  absent (rate-limited to once a minute), instead of waiting for a client to bind.
  `webui.sh soter-warm` remains available for a manual attempt.
- Diagnostics: exported bundles gain `[soter package]` and `[soter process]`.

## Observability

- `MPL-KEY serve uid=… alias=… leaf=<sha8>` and
  `MPL-USAGE adjust … limit/remaining` lines make H03/G02 diagnosable from a single
  logcat capture.
- `ksu_status`’s `keybox=` line is refreshed from the live state instead of being frozen
  at boot; the export adds a `[keybox live]` section.

## Notes

- **This archive contains no keybox.** Place your own at
  `/data/adb/tricky_store/keybox.xml`; until then the interceptor is a no-op by design.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
