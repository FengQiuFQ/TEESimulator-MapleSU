# TEESimulator-MapleSU v6.0.33

Fixes the `generateKey` crash introduced by 6.0.32.

## Root cause

`dex/stage_kt.py` re-read `Keystore2Interceptor.smali` before writing, which dropped the
`markDeleted` method (and the non-consuming `contains` change) it had just inserted.
The H03 call site survived, so the shipped 6.0.32 dex contained:

```
java.lang.NoSuchMethodError: No static method markDeleted(...)
    in class Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;
    at ...doSoftwareKeyGen(...)
```

Every `generateKey` from a target app threw, which is why the module "worked for a while
and then stopped" after updating.

## Fixed

- `stage_kt.py` now keeps one in-memory copy of the file and writes once.
- The deleted-key reply uses an explicit `KEY_NOT_FOUND(7)` through `v1` instead of the
  reused `v6` register.
- The stage ends with a build-time guard: if any `markDeleted` call exists without the
  method definition, the dex build fails instead of producing a broken module.

## Verification

- `dexdump -d` on the release dex shows `markDeleted` defined (4 references).
- `Set;->contains` is used for the tombstone lookup.
- Public archive still ships **no keybox**.

## Notes

- If you installed 6.0.32, update to 6.0.33 and reboot.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
