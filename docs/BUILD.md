# 构建

## 依赖

| 组件 | 版本 |
|---|---|
| JDK | 21 |
| Android NDK | r26（26.1.10909125） |
| Python | 3.11+ |
| Node.js | 18+（仅 WebUI 语法校验） |
| smali/baksmali | 随 `dex/tools` 提供 |

## 目录

```
dex/           smali 树 + Java 补丁源（make_p16.py 构建 dex）
native/        libTEESimulator.so 源码（含 soter_control）
module/        service.sh / webroot / sepolicy
tools/         打包与校验脚本
scripts/       build.sh 入口
```

## 构建 dex

```bash
cd dex
python3 make_p16.py a b d e f g s s4 m p
# 产物：dex/classes_p16.dex
```

脚本会：编译 `mpl/*.java` → 与 smali 树合并 → 校验 dex 头（magic/checksum/signature/file_size）。

## 构建原生库

```bash
cd native
$ANDROID_NDK/ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=jni/Android.mk
```

要求两次构建同哈希（`-Wl,--build-id=none`）。

## 打包模块

```bash
MAPLESU_TEE_DEX=dex/classes_p16.dex \
python3 tools/package_teesimulator_bundle.py
# 产物：dist/teesimulator-rs.zip
```

## 校验

```bash
python3 tools/verify_packages.py --ksu dist/*.zip
bash tools/verify_ksu_scripts.sh --zip dist/*.zip
```

## 可复现性

- 打包脚本对 zip 内每个条目使用固定时间戳与权限；
- 原生库禁用 build-id，避免不同 build 目录导致哈希漂移；
- Release 说明中会给出产物 sha256。
