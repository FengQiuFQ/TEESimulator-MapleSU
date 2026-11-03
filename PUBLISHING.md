# 发布流程（GitHub）

参考上游 [TEESimulator-RS](https://github.com/Enginex0/TEESimulator-RS) 与
相关参考实现 的公开做法，结合本项目的实际情况整理。

## 1. 仓库与分支

```
main         ← 默认分支，保护：Require PR / Require checks / 禁止 force push
dev          ← 日常集成，CI 全绿后合并到 main
feat/* fix/* ← 短生命周期
experimental/* ← 大改（例如原生 forge），不合入不发布
```

- **不要**用 GitFlow；没有多版本并行维护的需求；
- `CODEOWNERS` 只指定维护者，避免未经同意把上游作者拉进 Collaborators；
- 上游补丁迁移使用 `Co-authored-by:` trailer 保留作者署名。

## 2. 版本与标签

- `module.prop` 的 `version` / `versionCode` 与 tag 一致（例：`6.0.24_MapleSU` / `62400` ↔ `v6.0.24`）；
- tag 打在 `main` 上，签名标签（`git tag -s`）可选；
- Release 标题：`TEESimulator-MapleSU v6.0.24`。

## 3. 发布前检查

```bash
# 1) 语法
find . -name '*.sh' -print0 | xargs -0 -n1 sh -n
python3 -m compileall -q tools scripts
find module -name '*.js' -print0 | xargs -0 -n1 node --check

# 2) 打包（不含 keybox、不含专有组件）
MAPLESU_TEE_DEX=dex/classes.dex python3 tools/package_teesimulator_bundle.py
sha256sum dist/*.zip

# 3) 包结构校验
python3 tools/verify_packages.py --ksu dist/*.zip
bash tools/verify_ksu_scripts.sh --zip dist/*.zip
```

检查清单：

- [ ] 包内**没有** `keybox.xml`（或明确是"模板"且已在 README 声明）
- [ ] 包内**没有**任何专有二进制
- [ ] `module.prop` 的 id / version / versionCode 正确
- [ ] `NOTICE` / `CREDITS.md` 已更新
- [ ] CHANGELOG 有本次条目
- [ ] README 的截图不含序列号、账号、内网 IP

## 4. 发布

1. `git tag v6.0.24 && git push origin v6.0.24`；
2. GitHub → Releases → Draft a new release：
   - 选择 tag；
   - 标题 `TEESimulator-MapleSU v6.0.24`；
   - 正文用 `docs/opensource/RELEASE_NOTES-v6.0.24.md`；
   - 附件：模块 zip + `SHA256SUMS.txt`；
3. 勾选 "Set as the latest release"；
4. 同步更新 `module.yaml` 的 `release.assetPattern`（若命名规则变化）。

## 5. KSU 模块仓库收录（可选）

若要让 KernelSU 模块仓库索引到本项目：

- 保留仓库根 `module.yaml`（schema 见 KSU-Modules/tools）；
- Release 资产名匹配 `release.assetPattern`；
- `license` 字段与实际 `LICENSE` 一致（GPL-3.0）。

## 6. 与上游/OMK 的差异

| 项 | 上游 TEESimulator-RS | 相关参考实现 | 本项目 |
|---|---|---|---|
| CI | GitHub Actions 构建 zip | Actions + module.yaml | Actions：校验 + 可选打包 |
| 发布物 | zip + update.json | zip（assetPattern） | zip + SHA256SUMS |
| 更新检查 | `updateJson` | 管理器/仓库索引 | Release + 手动 |
| 文档 | README | docs/（配置/FAQ/贡献） | docs/（安装/构建/配置/架构/FAQ） |
| 许可 | GPL-3.0 | 自定义非商业 | GPL-3.0 |

## 7. 回滚

发现严重问题：

1. 立即把 Release 标记为 **Pre-release** 或删除附件；
2. 在 README 顶部加一条 "已知问题"；
3. 修复后发 `v6.0.25`，不要重写已发布的 tag。
