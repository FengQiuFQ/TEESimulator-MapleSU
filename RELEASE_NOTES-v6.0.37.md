# TEESimulator-MapleSU v6.0.37

Compatibility build for installers that reject the deflate streams.

Some vendor `unzip` binaries abort with `i/o error: corrupt deflate stream` while
extracting a valid archive. This release stores every entry uncompressed
(`ZIP_STORED`), so installation no longer depends on the inflate implementation.
The archive is larger (~4.85 MB) but byte-identical after extraction.

If installation still fails, the download itself is damaged: verify
`sha256sum` against `SHA256SUMS.txt` before flashing.

No keybox is shipped in this archive.
