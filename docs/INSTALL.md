# 安装 / 升级 / 卸载

## 环境要求

| 项 | 要求 |
|---|---|
| Android | 10 – 17 |
| 架构 | arm64-v8a |
| Root 方案 | KernelSU（推荐）/ Magisk / APatch |
| 其它 | 自己的 `keybox.xml`（本项目不提供） |

## 安装

1. 从 [Releases](../../releases) 下载 `TEESimulator-RS_MapleSU-*.zip`；
2. 在 KernelSU / Magisk / APatch 管理器中 **从文件安装**；
3. 把你的 `keybox.xml` 放到：

   ```bash
   su -c 'cp /sdcard/Download/keybox.xml /data/adb/tricky_store/keybox.xml'
   su -c 'chmod 644 /data/adb/tricky_store/keybox.xml'
   ```

4. 重启；
5. 打开 WebUI，确认 SOTER 兼容与 KeyBox 状态。

## 首次开机后自检

```bash
su -c 'cat /data/adb/tricky_store/ksu_status'
su -c 'pid=$(pidof keystore2); grep -c libTEESimulator /proc/$pid/maps'
```

期望：`core=ok`、`daemon=<pid>`、`inject=ok`、`keystore2` 的 maps 计数 ≥ 1。

## 升级

直接覆盖安装即可：

- 模块 id 固定为 `tricky_store`，可以覆盖上游 TEESimulator-RS；
- 从旧 id `teesimulator-rs` 升级时，首次开机会自动**禁用旧目录**并停掉它的守护进程；
- 配置文件（keybox/target/security_patch 等）不会被覆盖。

## 卸载

1. 管理器里卸载模块 → 重启；
2. 如需要，清理配置：

   ```bash
   su -c 'rm -rf /data/adb/tricky_store'
   ```

> 清理会删除 keybox 与 target 列表，请先备份。

## 回滚

1. 卸载当前版本 → 重启；
2. 安装上一个 Release → 重启；
3. 如果遇到 keystore 不可用：删除模块目录后重启即可恢复系统默认行为。

## 常见安装问题

| 现象 | 处理 |
|---|---|
| 安装被拒 `metamodule ... active` | 设备上有带自定义安装器的元模块，先禁用/卸载再装 |
| 装完没效果、`ksu_status` 不存在 | 检查模块目录是否为**符号链接**（管理器私有目录被清会悬空），改用管理器"从文件安装" |
| `inject=fail` | 等 30 秒再看（注入有重试）；仍失败则看 `dmesg | grep avc` |
| WebUI 打不开 | 确认模块内 `webroot/` 与 `core/webui.sh` 存在 |
