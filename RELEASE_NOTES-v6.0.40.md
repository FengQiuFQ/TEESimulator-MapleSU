# TEESimulator-MapleSU v6.0.40

Fixes a dex verification regression in 6.0.39.

- The usage-exhaustion gate in `SoftwareOperation.finish` reused v1 for a String and a
  boolean at the same merge label, and the createOperation call site overwrote v0 while
  it still held `this`. Both make the verifier reject the class, so software-key
  operations failed to load.
- The gate now keeps the alias in v1 (String), the result in v3, and passes the alias to
  `setUsageKey` through v8, leaving v0 untouched.

No keybox is included in this archive.
