#!/system/bin/sh
# hide_bootloader.sh —— 开机由 module_TEESimulatorRS 以**绝对路径** fork+exec 调用。
#
# 环境约束（P0 修复，审计 §2.8 / §7-1）：
#   模块进程的 cwd 与 PATH 都不可信；resetprop 只随模块目录发布
#   （$MODDIR/resetprop，或 Lite 布局的 $MODDIR/TEESimulatorRS_Core/resetprop）。
#   旧版本这里全是裸 `resetprop`，只要 PATH 没带上模块目录，每条命令都 "not found"，
#   脚本不再改写 SELinux 状态（曾经的 `setenforce 1` 已移除） → 上层只看到 "run hide_bootloader.sh"，
#   实际一个属性都没改（静默失败）。
#
# 因此：用 $0 自己定位模块目录 → 所有 resetprop 走绝对路径 → 找不到 resetprop 或任一
# 属性写失败都返回非 0，让上层日志能区分"真的成功"和"静默失败"。

MODDIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd)"
if [ -z "$MODDIR" ] || [ ! -f "$MODDIR/hide_bootloader.sh" ]; then
  # 兜底：$0 不可信时，在模块根目录里找同名脚本
  for d in /data/adb/modules/*/; do
    if [ -f "$d/hide_bootloader.sh" ]; then MODDIR="${d%/}"; break; fi
  done
fi
if [ -z "$MODDIR" ] || [ ! -f "$MODDIR/hide_bootloader.sh" ]; then
  echo "hide_bootloader: cannot locate module dir (argv0=$0)" >&2
  exit 1
fi

PATH="$MODDIR:$MODDIR/TEESimulatorRS_Core:$PATH"
export PATH

RP=""
for c in "$MODDIR/resetprop" "$MODDIR/TEESimulatorRS_Core/resetprop"; do
  if [ -x "$c" ]; then RP="$c"; break; fi
done
if [ -z "$RP" ]; then
  RP="$(command -v resetprop 2>/dev/null)"
fi
if [ -z "$RP" ]; then
  echo "hide_bootloader: resetprop not found (MODDIR=$MODDIR)" >&2
  exit 1
fi

FAILED=0

check_reset_prop() {
  local NAME="$1"
  local EXPECTED="$2"
  local VALUE
  VALUE="$("$RP" "$NAME" 2>/dev/null)"
  # 属性不存在时 resetprop 返回空：跳过（不是失败）
  if [ -z "$VALUE" ]; then
    return 0
  fi
  if [ "$VALUE" = "$EXPECTED" ]; then
    return 0
  fi
  if "$RP" "$NAME" "$EXPECTED"; then
    return 0
  fi
  FAILED=$((FAILED + 1))
  echo "hide_bootloader: set $NAME=$EXPECTED failed (was '$VALUE')" >&2
  return 1
}

contains_reset_prop() {
  local NAME="$1"
  local CONTAINS="$2"
  local NEWVAL="$3"
  local VALUE
  VALUE="$("$RP" "$NAME" 2>/dev/null)"
  case "$VALUE" in
    *"$CONTAINS"*)
      if "$RP" "$NAME" "$NEWVAL"; then
        return 0
      fi
      FAILED=$((FAILED + 1))
      echo "hide_bootloader: set $NAME=$NEWVAL failed (was '$VALUE')" >&2
      return 1
      ;;
  esac
  return 0
}

contains_reset_ro_prop() {
  local NAME="$1"
  local CONTAINS="$2"
  local NEWVAL="$3"
  local VALUE
  VALUE="$("$RP" "$NAME" 2>/dev/null)"
  case "$VALUE" in
    *"$CONTAINS"*)
      if "$RP" -n "$NAME" "$NEWVAL"; then
        return 0
      fi
      FAILED=$((FAILED + 1))
      echo "hide_bootloader: set $NAME=$NEWVAL (-n) failed (was '$VALUE')" >&2
      return 1
      ;;
  esac
  return 0
}

check_reset_prop "ro.boot.vbmeta.device_state" "locked"
check_reset_prop "ro.boot.verifiedbootstate" "green"
check_reset_prop "ro.boot.flash.locked" "1"
check_reset_prop "ro.boot.veritymode" "enforcing"
check_reset_prop "ro.boot.warranty_bit" "0"
check_reset_prop "ro.warranty_bit" "0"
check_reset_prop "ro.debuggable" "0"
check_reset_prop "ro.force.debuggable" "0"
check_reset_prop "ro.secure" "1"
check_reset_prop "ro.adb.secure" "1"
check_reset_prop "ro.build.type" "user"
check_reset_prop "ro.build.tags" "release-keys"
check_reset_prop "ro.vendor.boot.warranty_bit" "0"
check_reset_prop "ro.vendor.warranty_bit" "0"
check_reset_prop "vendor.boot.vbmeta.device_state" "locked"
check_reset_prop "vendor.boot.verifiedbootstate" "green"
contains_reset_ro_prop "sys.oem_unlock_allowed" "1" "0"

# MIUI specific
check_reset_prop "ro.secureboot.lockstate" "locked"

# Realme specific
check_reset_prop "ro.boot.realmebootstate" "green"
check_reset_prop "ro.boot.realme.lockstate" "1"

# ASUS specific
check_reset_prop "ro.boot.asusverifiedstate" "PASS"

# 分区验证（隐藏警告）
check_reset_prop "partition.system.verified" "0"
check_reset_prop "partition.vendor.verified" "0"
check_reset_prop "partition.product.verified" "0"
check_reset_prop "partition.system_ext.verified" "0"
check_reset_prop "partition.odm.verified" "0"

# OEM 解锁
contains_reset_ro_prop "ro.oem_unlock_supported" "1" "0"

# USB / ADB
check_reset_prop "persist.sys.usb.config" "none"
check_reset_prop "service.adb.root" "0"

# 启动/验证状态
check_reset_prop "ro.boot.selinux" "enforcing"
check_reset_prop "ro.boot.verifiedbootstate" "green"
check_reset_prop "ro.boot.flash.locked" "1"
check_reset_prop "ro.boot.avb_version" "1.3"
check_reset_prop "ro.boot.vbmeta.device_state" "locked"
check_reset_prop "ro.crypto.state" "encrypted"


if [ "$FAILED" -gt 0 ]; then
  echo "hide_bootloader: $FAILED property write(s) failed (resetprop=$RP)" >&2
  exit 1
fi
echo "hide_bootloader: all properties applied (resetprop=$RP)"
exit 0
