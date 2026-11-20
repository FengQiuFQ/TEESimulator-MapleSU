# TEESimulator-MapleSU v6.0.41

Merges PR #4 (boot conflict detection by what a module ships) plus a hardening pass
found during review.

- `service.sh` no longer guesses conflicts from `module.prop` descriptions. It calls
  `core/compat.sh --conflicts`, the same rule the compatibility report uses: an injected
  library, or an injector aimed at keystore2. Managers that only edit keybox.xml or
  target.txt no longer suppress the daemon.
- Modules without `module.prop` are not loaded, so they are reported as leftovers and no
  longer block startup.
- Review fix: the injector scan now looks at the injector itself and at the module's
  libraries/injector-named files (size-capped), not at every file. A manager that ships
  an `inject` binary and mentions keystore2 in `module.prop` or restarts it in its own
  service script no longer counts as a conflict.

Archive is stored (no deflate); no keybox is included.
