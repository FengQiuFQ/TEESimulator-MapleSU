# TEESimulator-MapleSU v6.0.28

Two fixes from the v6.0.27 diagnostic log.

## SELinux: app access to daemon-created keys

A denial was visible in the exported log:

```
avc: denied { gen_unique_id } for scontext=u:r:gmscore_app:s0
     tcontext=u:r:ksu:s0 tclass=keystore_key
```

Keys created by the daemon carry the daemon's label (`u:r:ksu:s0`), so an app that
later used one was refused. `sepolicy.rule` now grants app domains access to keys
labelled `ksu` only:

```
allow appdomain ksu:keystore_key *;
allow ksu ksu:keystore_key *;
```

System keys keep their own labels; nothing else is widened. Reboot after installing so
the rules are applied.

## KeyBox panel no longer invents a keybox

The public archive ships no key material, but the WebUI still showed **Yurikey66** as
the active keybox and allowed pressing “apply”, which failed with
`keybox_source_missing`.

Now:

- no `/data/adb/tricky_store/keybox.xml` → active keybox reads **未安装**;
- the built-in entry is reported as `available:false` and the selector/apply button are
  disabled;
- the panel explains what to do: place `keybox.xml` at
  `/data/adb/tricky_store/keybox.xml`;
- `keybox_set` returns the same error only when a built-in file genuinely does not
  exist.

## Notes

- This archive contains **no keybox**; without one the interceptor is a no-op.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
