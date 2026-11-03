# Contributing

感谢你愿意参与。这个项目面向"系统安全机制的行为研究"，因此对**可复现性**和**证据**的要求比一般项目更高。

## 提交前

1. 先搜索已有 Issue，避免重复；
2. 大改动（新功能、重构、协议变更）请先开 Issue 讨论方向，不要直接提大 PR；
3. 不要提交任何密钥材料、设备序列号、账号信息或完整 logcat。

## 代码规范

- **shell**：POSIX sh，`bash -n` / `sh -n` 必须通过；不要依赖 bash 数组；
- **Java/smali**：保持与上游类结构一致，补丁处用 `MPL-` 前缀注释说明原因；
- **原生**：C++17 / Rust，构建必须可复现（同源两次构建同哈希）；
- **WebUI**：`node --check` 通过；接口契约变更需同步 `docs/CONFIG.md`。

## 提交信息

```
<area>: <一句话说明>

为什么需要这个改动（问题/检测项/上游行为），
以及如何验证（命令或日志）。
```

`area` 取值：`keystore` / `soter` / `webui` / `native` / `packaging` / `docs`。

## 验证要求

PR 描述里请附：

- 受影响设备与 Android 版本；
- 修改前后的关键日志（`ksu_status`、`logcat -s TEESimulator`、`MPL-SOTER`）；
- 回归：Key Attestation 能出链、Soter 事务仍被接管、`inject=ok`。

## 许可

提交即表示你同意以 **GPL-3.0** 授权你的贡献。请勿提交来自不兼容许可（例如非商业自定义许可）的代码。
