# 配置

所有配置都在 `/data/adb/tricky_store/`。

## keybox.xml

```bash
su -c 'cp /sdcard/Download/keybox.xml /data/adb/tricky_store/keybox.xml'
su -c 'chmod 644 /data/adb/tricky_store/keybox.xml'
```

- 至少包含一条可用的证书链（EC 推荐，RSA 请求会回退到 EC 签名）；
- 文件必须是合法 XML，不要有水印/不可见字符；
- **本项目不提供 keybox**。

自动更新配置文件 `keybox_update.conf`：

```ini
enabled=1
source=yurikey          # yurikey | custom
custom_url=
interval_hours=24       # 0 表示每次开机检查一次
last_check_epoch=0
retry_after_epoch=0
last_result=
installed_sha256=       # 自动维护：更新最后装入的 keybox 的哈希
```

**不会替换你自己放的 keybox。** 自动更新（开机和后台定时）只替换它自己装入的文件和模块内置的那份。
当前文件是你自己放的时，它不联网也不改文件，WebUI 里会提示。文件是否由更新装入，靠 `installed_sha256` 判断；
旧版本没有这条记录，改看文件修改时间是否在 `last_check_epoch` 之后 2 分钟内。认不出来的都算你自己放的。

WebUI 的「立即更新」会替换当前文件。如果当前文件是你自己放的，会先备份成
`keybox.xml.bak.<时间>`（权限 600），备份失败就不替换。恢复方法：

```bash
su -c 'cp /data/adb/tricky_store/keybox.xml.bak.<时间> /data/adb/tricky_store/keybox.xml'
```

想让自动更新接管自己放的文件，点一次「立即更新」即可。

失败语义：下载 → 解包 → 校验 → 原子替换；任一失败**不覆盖**现有 keybox，
并写入 `retry_after_epoch = now + 300`，5 分钟内不再下载，之后再试。

## target.txt

每行一个包名，控制哪些应用被接管。

| 写法 | 含义 |
|---|---|
| `com.example.app` | 自动（AUTO） |
| `com.example.app!` 或 `!com.example.app` | 强制生成（GENERATE） |
| `com.example.app?` 或 `?com.example.app` | 仅修补（PATCH） |
| `#` 开头 | 注释 |

前缀与后缀两种写法都支持。`auto_third_app` 开启时，开机和应用变动时会把当前用户的三方应用合并进名单；
关闭时只做备份，不清空。

合并时只移除一种行：不带标记、对应的应用已经从设备上卸载的行，因为这种行可能是自动加的。
系统应用（如 `com.google.android.gms!`）、只装在其他用户下的应用、带 `!` 或 `?` 的行、注释和无法识别的行都会保留。
所以尚未安装的应用想提前写进名单，要带上标记。

## security_patch.txt

```ini
system=prop        # 跟随设备
# 或
2026-10-05         # 固定日期
```

## soter_scope.conf

Soter 接管范围（uid 列表，逗号分隔）。文件不存在 = 全部应用。
WebUI 的「Soter 接管范围」面板就是编辑这个文件。

## soter_certs

- 文件不存在 / `off`：**证书链关闭**（默认）；
- `on`：Soter blob 携带 keybox 链（体积更大，uid/counter 为生成时固化值）。

## 其它文件

| 文件 | 作用 |
|---|---|
| `soter_forge` / `soter_forge_disabled` | Soter 兼容总开关 |
| `soter_socket_off` | 关闭 socket 控制通道，回退 binder |
| `soter_route` | 最近一次使用的通道（socket/binder） |
| `ksu_status` | 开机各步骤结果 |
| `persistent_keys/` | 持久化密钥 |
| `hbk` | 设备唯一派生种子 |
