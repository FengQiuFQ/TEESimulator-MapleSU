# TEESimulator-MapleSU v6.0.25

First public source release. It focuses on **Soter correctness** and on the boot path
being verifiable instead of hopeful.

## Highlights

### Soter signatures now use RSASSA-PSS
- SHA-256 / MGF1-SHA-256 / **salt 20** / emBits 2047, matching the stock TA.
- Verified on device and cross-checked with an independent implementation.

### An AMS-independent Soter control channel
- The injected library listens on the abstract unix socket `@teesim_soter` inside
  saterserver; the daemon connects to it (proto 1: `HELLO`/`REGISTER`/`TX`/`REPLY`/
  `PING`/`STATUS`).
- `SO_PEERCRED` requires uid 0; a two-second timeout, an unregistered code, or a `-1`
  reply forwards the transaction to the real service.
- Plain KernelSU and Android 17 no longer hit `bindService` being refused by AMS.

### Boot-path reliability
- Injection is probed for up to 30 seconds instead of once, so `inject=fail` is not
  reported while the daemon is still injecting.
- `target.txt` is refreshed once more after boot, so apps installed later are not missed.
- The legacy module id `teesimulator-rs` is migrated (old directory disabled, its daemon
  stopped) to avoid two interceptors fighting over keystore2.

### Keybox auto-update
- On by default, channel **yurikey**.
- A failed attempt never replaces the live keybox and is retried after five minutes
  (`retry_after_epoch`) instead of waiting a full interval.
- **This archive contains no keybox**; without one the interceptor is a no-op.

### WebUI
- Module probing supports the flat layout, skips disabled modules, and no longer fails
  with `errno=1` on the generated probe script.
- ScopeCli no longer crashes on vendor icon APIs.

## Install

1. Download `TEESimulator-RS_MapleSU_6.0.25_ksu.zip`.
2. Install with KernelSU / Magisk / APatch and reboot.
3. Provide your own keybox at `/data/adb/tricky_store/keybox.xml` (chmod 644).
4. Reboot and check `su -c 'cat /data/adb/tricky_store/ksu_status'`.

Module id is `tricky_store`, so it can replace an existing installation.

## Verify

```bash
su -c 'cat /data/adb/tricky_store/ksu_status'
# core=ok / daemon=<pid> / inject=ok
su -c 'pid=$(pidof keystore2); grep -c libTEESimulator /proc/$pid/maps'
su -c 'cat /data/adb/tricky_store/soter_route'
# route=socket means the AMS-independent channel is in use
```

## Checksums

See the attached `SHA256SUMS.txt`.

## Known limitations

- No keybox means no attestation chain; the module stays inert until one is supplied.
- With the certificate-chain switch on, Soter blobs carry a frozen uid/counter.
- Injection needs a SELinux policy that allows ptrace (the module ships its own rule).
- Public detector checks (Duck Detector, 春秋, Demo 1.7) were regressed on development
  devices; this is not a promise about any commercial risk engine.

## Credits

Upstream: Enginex0/TEESimulator-RS and JingMatrix/TEESimulator (GPL-3.0).
Thanks to 知秋 (947409161) for help with Soter semantics, detector regressions and
debugging direction. Related reference implementations informed the design; no code
was reused.
