# TEESimulator-MapleSU v6.0.39

Usage-count exhaustion for pre-opened operations (Demo "TEE forgery" check).

- A usage-limited key now keeps a **persistent exhausted ledger**
  (`/data/adb/tricky_store/usage_exhausted`).
- `SoftwareOperation.finish` refuses an operation whose alias is in that ledger, throwing
  `KEY_EXPIRED` (keystore2 `KEY_PERMANENTLY_INVALIDATED`). A second operation opened
  before the first finished therefore can no longer produce a signature.
- The ledger is cleared when the alias is generated again; the `KEY_NOT_FOUND`
  tombstone behaviour from 6.0.32 is unchanged.
- Archive is shipped stored (no deflate) for installer compatibility.

No keybox is included in this archive.
