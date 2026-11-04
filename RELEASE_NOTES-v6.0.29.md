# TEESimulator-MapleSU v6.0.29

This release is about the two reasons a fresh install can still look inert: the target
list never grew past its 11 defaults, and nothing told the user that the module had no
keybox to work with.

## Default target list now covers three detectors

`target.txt` ships with 14 entries instead of 11:

- `com.basicas.u52` — Demo 1.7
- `com.chunqiunativecheck` — 春秋
- `com.maple.detect` — Maple Detector

Existing installs keep their list; the 30-second refresh below adds every third-party
package anyway.

## The list keeps itself current

- `service.sh` starts `webui.sh target-watch 30` through `setsid`; it survives the boot
  script and is single-instance (`/data/adb/tricky_store/.target_watch.pid`).
- Every 30 seconds it merges third-party packages into `target.txt`, starting from early
  boot: if `pm` is not ready yet the cycle is skipped and retried, so the list catches up
  within 30 seconds of the package service becoming available.
- User lines (`pkg`, `pkg!`, `pkg?`, `!pkg`, `?pkg`) and `#` comments are preserved.
- The file is only rewritten when its content actually changes, so the daemon is not
  woken up every cycle.
- Refresh temporaries live in `/data/local/tmp`, not the watched config directory. This
  removes the `Configuration file change detected: .diag.*` log flood that buried real
  transaction logs in earlier reports.

## KeyBox checks share the same cadence

`kbu_tick` runs every 30 seconds and only performs a network update when the keybox is
actually due (interval or `retry_after_epoch`). A device that boots without network no
longer waits a full interval before picking up an update.

## Missing keybox is now loud

Without `/data/adb/tricky_store/keybox.xml` the module is deliberately inert. The WebUI
now shows a banner at the top of the page:

> **内置 Keybox 密钥未配置** — TEE 模块不生效。请把 keybox.xml 放到
> `/data/adb/tricky_store/keybox.xml`

It disappears once a keybox is present.

## Diagnostics

- `ksu_status` gains `target_refresh=ok:N` or `target_refresh=fail:<reason>`.
- The exported bundle adds `target_refresh`, the `auto_third_app` flag, a live
  `pm list packages -3` count, the first 20 lines of `target.txt` and the `soter_scope`
  line count.
- The KeyBox panel reports **未安装** instead of “Yurikey66” when nothing is installed,
  and the switch is disabled (this archive ships no key material).

## Notes

- **This archive contains no keybox.** Place your own at
  `/data/adb/tricky_store/keybox.xml`; until then the interceptor is a no-op by design.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
