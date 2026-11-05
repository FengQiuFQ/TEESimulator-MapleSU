/*
 * MapleSU TEE WebUI — bilingual layer (zh / en).
 *
 * Design:
 *  - the page is authored in Chinese; this file maps the exact strings to English and
 *    swaps text nodes / title / aria-label / placeholder in place;
 *  - a MutationObserver translates content rendered later by main.js (status lines,
 *    toasts, dialogs), so no per-string calls are needed there;
 *  - the choice persists in localStorage and defaults to the device language.
 */
(function () {
    "use strict";

    var STORAGE_KEY = "maplesu-tee-lang";

    var EN = {
        "KSU/Lite：经 ksu.exec 调用 $MODDIR/core/webui.sh（scope list/set/setall），不可用时回退 mpl.ScopeCli。":
            "KSU/Lite: calls $MODDIR/core/webui.sh through ksu.exec (scope list/set/setall); falls back to mpl.ScopeCli when unavailable.",
        "开启后，target.txt 内的应用访问本模块未创建的密钥时会收到 KEY_NOT_FOUND，被迫重新生成密钥并走模拟路径。原有密钥可能因此不可用。":
            "When on, apps in target.txt receive KEY_NOT_FOUND for keys this module did not create, forcing them to regenerate through the simulator. Existing keys may become unusable.",
        "未安装 KeyBox：请把 keybox.xml 放到 /data/adb/tricky_store/keybox.xml":
            "KeyBox not installed: put keybox.xml at /data/adb/tricky_store/keybox.xml",
        "TEE 模块不生效。请把 keybox.xml 放到 /data/adb/tricky_store/keybox.xml":
            "TEE module inactive. Put keybox.xml at /data/adb/tricky_store/keybox.xml",
        "≤1 秒生效；链使用内置 keybox（可验到 Key Attestation CA1）":
            "Effective in ≤1 s; the chain uses the built-in keybox (verifiable up to Key Attestation CA1)",
        "通过 window.ksu.exec 调用 $MODDIR/core/webui.sh":
            "Calls $MODDIR/core/webui.sh through window.ksu.exec",
        "选择由模块接管 SOTER 服务的应用。默认接管全部应用，也可以收窄到指定应用。":
            "Choose which apps the module takes over for SOTER. All apps by default; narrow to specific ones.",
        "导出到 /sdcard/Download，自动打码序列号；提交前请再检查一遍。":
            "Export to /sdcard/Download with serial numbers masked; review before sharing.",
        "与 6.0.6 及更早版本行为一致（blob 718 B，无 certs）":
            "Matches 6.0.6 and earlier (blob 718 B, no certs)",
        "未实现 · TEE 判定由运行时 KeyStore 探针决定，无需开关":
            "Not implemented · TEE verdicts come from the runtime KeyStore probe; no switch needed",
        "KeyBox 文件存在但无法读取，请检查权限与 SELinux 上下文":
            "KeyBox exists but cannot be read; check permissions and SELinux context",
        "Ultra：通过模块 HTTP 服务（/soterScope）读写。":
            "Ultra: read/write through the module HTTP service (/soterScope).",
        "为使用 SOTER 的应用提供兼容支持。关闭后保留设备原有行为。":
            "Compatibility support for apps that use SOTER. Turning it off keeps the device's original behaviour.",
        "已开启 · 未知 KeyId 返回 KEY_NOT_FOUND":
            "On · unknown KeyIds return KEY_NOT_FOUND",
        "按设定间隔检查证书更新。下载或校验失败时，继续保留原有证书。":
            "Check for certificate updates at the configured interval. On failure the existing certificate is kept.",
        "已关闭 SOTER 证书链，回到旧版行为（无 certs）":
            "SOTER certificate chain is off; back to the legacy behaviour (no certs)",
        "已使用自定义 KeyBox（内置源不可用，切换已禁用）":
            "Using a custom KeyBox (built-in source unavailable, switching disabled)",
        "下载失败（curl / wget 均不可用或网络错误）":
            "Download failed (neither curl nor wget works, or network error)",
        "填 0 表示每次开机检查。更新成功后，重启设备生效。":
            "0 means check on every boot. A successful update takes effect after reboot.",
        "跟随设备的安全补丁日期，或为后续签发的证书指定日期。":
            "Follow the device security patch date, or set one for newly issued certificates.",
        "已关闭 SOTER 兼容，保存后自动生效（≤1 秒）":
            "SOTER compatibility off; applies automatically after saving (≤1 s)",
        "已开启 SOTER 兼容，保存后自动生效（≤1 秒）":
            "SOTER compatibility on; applies automatically after saving (≤1 s)",
        "选中后点保存，「恢复全放行」回到默认（全部应用）。":
            "Select apps then save; \"Allow all\" restores the default (all apps).",
        "缺少 AndroidAttestation 节点": "Missing AndroidAttestation node",
        "已关闭 · 未知 KeyId 转发真实 HAL":
            "Off · unknown KeyIds are forwarded to the real HAL",
        "跟随 MapleSU 管理器的界面风格与配色。":
            "Follows the MapleSU manager's style and colours.",
        "字节。提交前请再检查一遍，确认没有个人信息。":
            "bytes. Review before sharing to make sure no personal data is included.",
        "缺少 CertificateChain 节点": "Missing CertificateChain node",
        "KeyBox 已切换，下一次证书请求即生效":
            "KeyBox switched; effective on the next certificate request",
        "已开启 SOTER 证书链，≤1 秒生效":
            "SOTER certificate chain on; effective in ≤1 s",
        "已开启 · 安装 / 卸载应用后自动刷新":
            "On · list refreshes after app install/uninstall",
        "选择预置密钥并应用，更改后重启设备生效。":
            "Choose a preset key and apply; reboot after changing.",
        "KeyBox 文件存在但为空（0 字节）":
            "KeyBox exists but is empty (0 bytes)",
        "设置保存在设备上，更改后按提示重启生效。":
            "Settings live on the device; reboot as prompted after changes.",
        "已启用 · 保存后自动生效（≤1 秒）":
            "Enabled · applies automatically after saving (≤1 s)",
        "间隔需为 0–8760 之间的整数小时":
            "Interval must be a whole number of hours between 0 and 8760",
        "请填写有效的 http(s) URL": "Enter a valid http(s) URL",
        "写入 SOTER 证书链开关失败:": "Failed to write the SOTER certificate-chain switch:",
        "TEE 模拟器 · MapleSU": "TEE Simulator · MapleSU",
        "已关闭 · 保留手动维护的应用列表":
            "Off · keep the manually maintained app list",
        "MapleSU · TEE 模拟器": "MapleSU · TEE Simulator",
        "证书链（SOTER certs）": "Certificate chain (SOTER certs)",
        "自定义 KeyBox（当前生效）": "Custom KeyBox (active)",
        "保存 Soter 接管范围失败:": "Failed to save the SOTER takeover scope:",
        "替换 keybox.xml 失败": "Failed to replace keybox.xml",
        "证书已更新，下一次证书请求即生效":
            "Certificate updated; effective on the next certificate request",
        "读取 Soter 接管范围失败:": "Failed to read the SOTER takeover scope:",
        "SOTER 证书链开关写入失败：": "Failed to write the SOTER certificate-chain switch:",
        "缺少 PrivateKey 节点": "Missing PrivateKey node",
        "使用模块已有的设备状态兼容设置":
            "Use the module's existing device-state compatibility setting",
        "内置 Keybox 密钥未配置": "Built-in KeyBox is not configured",
        "内容不是 keybox XML": "Content is not a keybox XML",
        "当前 = 全部应用接管（默认）": "Current: all apps taken over (default)",
        "仅 KernelSU 后端支持": "Only supported on the KernelSU backend",
        "强制重建目标应用密钥（实验）":
            "Force target apps to regenerate keys (experimental)",
        "写入 SOTER 开关失败:": "Failed to write the SOTER switch:",
        "安装或卸载应用后自动更新列表":
            "Update the list automatically after installing or uninstalling apps",
        "已开启 · 记录更详细的日志": "On · record more detailed logs",
        "通过模块 HTTP 服务读写": "Read/write through the module HTTP service",
        "已关闭 · 使用设备原有行为": "Off · use the device's original behaviour",
        "内容不是合法 keybox": "Content is not a valid keybox",
        "已关闭 · 仅记录关键事件": "Off · only key events are recorded",
        "写入证书自动更新开关失败:": "Failed to write the certificate auto-update switch:",
        "SOTER 开关写入失败：": "Failed to write the SOTER switch:",
        "切换 KeyBox 失败:": "Failed to switch KeyBox:",
        "更改仅影响后续签发的证书。": "Changes only affect certificates issued later.",
        "证书自动更新开关写入失败": "Failed to write the certificate auto-update switch",
        "导出完成，但未返回路径。": "Export finished but no path was returned.",
        "设备状态兼容设置保存失败":
            "Failed to save the device-state compatibility setting",
        "KeyBox 切换失败：": "KeyBox switch failed:",
        "未启用 · 仅手动更新": "Disabled · manual updates only",
        "写完开关就 ready": "Ready as soon as the switch is written",
        "切换内置 KeyBox": "Switch KeyBox",
        "保存证书更新配置失败:": "Failed to save the certificate update settings:",
        "安全补丁配置写入失败：": "Failed to write the security patch setting:",
        "KSU 模式暂不支持（": "Not supported in KSU mode (",
        "启用 SOTER 兼容": "Enable SOTER compatibility",
        "已开启强制重建（实验）": "Force regeneration enabled (experimental)",
        "写入安全补丁配置失败:": "Failed to write the security patch setting:",
        "证书更新配置保存失败：": "Failed to save certificate update settings:",
        "选择适合你的使用方式。": "Choose how you want to use it.",
        "已开启：身份生成中…": "On: generating identity…",
        "细腻通透，轻盈有质感": "Refined and translucent, light and tactile",
        "已选 0 / 共 0": "Selected 0 / 0",
        "Soter 接管范围": "SOTER takeover scope",
        "自定义 URL 无效": "Custom URL is invalid",
        "更改后重启设备生效。": "Reboot for changes to take effect.",
        "应用列表设置保存失败": "Failed to save the app list settings",
        "设置已保存，重启生效": "Settings saved; reboot to apply",
        "关于 TEE 模拟器": "About TEE Simulator",
        "正在读取模块设置…": "Reading module settings…",
        "立即更新请求失败：": "Update request failed:",
        "证书更新配置已保存": "Certificate update settings saved",
        "· 原因见下方卡片": "· see the card below for the reason",
        "KeyBox 摘要": "KeyBox summary",
        "SOTER 证书链": "SOTER certificate chain",
        "已固定安全补丁日期": "Security patch date pinned",
        "缺少 Key 节点": "Missing Key node",
        "项在当前后端不可用": "not available on this backend",
        "已启用证书自动更新": "Certificate auto-update enabled",
        "没有 PEM 证书": "No PEM certificate",
        "简洁克制，专注内容": "Clean and restrained, content first",
        "已改为自动跟随设备": "Now follows the device",
        "已关闭证书自动更新": "Certificate auto-update disabled",
        "立即更新证书失败:": "Certificate update failed:",
        "请至少选择一个应用": "Select at least one app",
        "关闭（默认关闭）": "Off (default)",
        "没有可接管的应用": "No apps available for takeover",
        "请先选择有效日期": "Select a valid date first",
        "应用列表自动维护": "Automatic app-list maintenance",
        "SOTER 兼容": "SOTER compatibility",
        "已保存 · 接管": "Saved · taken over",
        "恢复全放行失败：": "Failed to restore allow-all:",
        "自动维护应用列表": "Maintain the app list automatically",
        "写入临时文件失败": "Failed to write the temporary file",
        "收窄到选中应用（": "Narrow to selected apps (",
        "没有匹配的应用": "No matching apps",
        "密钥与证书管理": "Key and certificate management",
        "详细日志已开启": "Verbose logging enabled",
        "正在更新设置…": "Updating settings…",
        "更新源地址无效": "Update source URL is invalid",
        "TEE 模拟器": "TEE Simulator",
        "已关闭强制重建": "Force regeneration disabled",
        "KSU 不支持": "Not supported by KSU",
        "收窄到选中应用": "Narrow to selected apps",
        "详细日志已关闭": "Verbose logging disabled",
        "间隔参数无效": "Invalid interval",
        "解锁状态兼容": "Unlock-state compatibility",
        "已恢复全放行": "Allow-all restored",
        "项设置未读取": "settings not read",
        "下载内容为空": "Downloaded content is empty",
        "启用自动更新": "Enable auto-update",
        "配置保存失败": "Failed to save the configuration",
        "TEE 修复": "TEE fix",
        "证书自动更新": "Certificate auto-update",
        "设备实际补丁": "Device patch level",
        "DEX 摘要": "DEX digest",
        "自动跟随设备": "Follow the device automatically",
        "导出诊断日志": "Export diagnostic logs",
        "安全补丁日期": "Security patch date",
        "证书无法解码": "Certificate cannot be decoded",
        "已加载 ·": "Loaded ·",
        "诊断与日志": "Diagnostics & logs",
        "恢复全放行": "Allow all",
        "更新失败：": "Update failed:",
        "未知更新源": "Unknown update source",
        "设置已更新": "Settings updated",
        "正在导出…": "Exporting…",
        "保存失败：": "Save failed:",
        "开了就修复": "Enable to fix",
        "日志已导出": "Logs exported",
        "版本信息": "Version information",
        "恢复中…": "Restoring…",
        "界面风格": "Interface style",
        "重新检测": "Re-detect",
        "跟随设备": "Follow device",
        "文件过大": "File too large",
        "应用中…": "Applying…",
        "立即更新": "Update now",
        "不可用：": "Unavailable: ",
        "固定日期": "Fixed date",
        "跟随系统": "Follow system",
        "详细日志": "Verbose logging",
        "模块版本": "Module version",
        "系统伪装": "System spoofing",
        "· 筛选": "· Filter",
        "实际地址": "Actual address",
        "下次计划": "Next run",
        "是否接管": "Takeover",
        "读取失败": "Read failed",
        "已开启：": "Enabled: ",
        "文件大小": "File size",
        "全部接管": "All apps",
        "内容为空": "Content is empty",
        "切换中…": "Switching…",
        "实验功能": "Experimental",
        "当前生效": "Active",
        "上次检查": "Last check",
        "处理中…": "Processing…",
        "读取中…": "Reading…",
        "更新中…": "Updating…",
        "保存中…": "Saving…",
        "· 另有": "· plus",
        "下次开机": "Next boot",
        "已导出：": "Exported: ",
        "段证书链": "certificate chain segment(s)",
        "不可用": "Unavailable",
        "已关闭": "Off",
        "已启用": "Enabled",
        "未读取": "Not read",
        "未实现": "Not implemented",
        "已收窄": "Narrowed",
        "读取中": "Reading",
        "自定义": "Custom",
        "更新源": "Update source",
        "已开启": "On",
        "个应用": "app(s)",
        "只读）": "read-only)",
        "检测中": "Detecting",
        "只读：": "Read-only: ",
        "未启用": "Disabled",
        "未配置": "Not configured",
        "已导出": "Exported",
        "/ 共": "/ total",
        "重试": "Retry",
        "浅色": "Light",
        "深色": "Dark",
        "反选": "Invert",
        "完成": "Done",
        "未知": "Unknown",
        "应用": "Apps",
        "成功": "Success",
        "从未": "Never",
        "作者": "Author",
        "摘要": "Digest",
        "只读": "Read-only",
        "构建": "Build",
        "刷新": "Refresh",
        "清空": "Clear",
        "结果": "Result",
        "已选": "Selected",
        "保存": "Save",
        "全选": "Select all",
        "叶": "Leaf",
        "HTTP 请求失败": "HTTP request failed",
        "（Failed to fetch）": " (Failed to fetch)",
        "请求失败": "Request failed",
        "网络错误": "Network error",
        "未知错误": "Unknown error",
        "超时": "timed out",
        "已复制": "Copied",
        "已保存": "Saved",
        "失败": "Failed",
        "错误": "Error",
        "成功": "Success",
        "搜索应用名或包名": "Search app name or package",
        "搜索应用": "Search apps",
        "当前": "Current",
        "个目标应用": "target app(s)",
        "个目标": "target(s)",
        "目标应用": "target app(s)",
        "目标": "target(s)",
        "已选择": "Selected",
        "共": "total",
        "项": "item(s)",
        "秒": "s",
        "小时": "h",
        "天": "d",
        "字节": "B"
    };

    // Whitespace-insensitive index: HTML hints are authored across lines, so their
    // collapsed text (and the dictionary key) can differ only by spaces.
    var EN_NORM = {};
    Object.keys(EN).forEach(function (key) {
        var norm = key.replace(/\s+/g, "");
        if (!(norm in EN_NORM)) EN_NORM[norm] = EN[key];
    });

    // Longest first so that a shorter key never wins over a longer sentence.
    var KEYS = Object.keys(EN).sort(function (a, b) { return b.length - a.length; });
    var originals = new WeakMap();
    var translating = false;
    var lang = "zh";

    function isSkipped(node) {
        var parent = node.parentElement;
        if (!parent) return true;
        var tag = parent.tagName;
        return tag === "SCRIPT" || tag === "STYLE" || tag === "TEXTAREA" || tag === "CODE" || tag === "PRE";
    }

    function translateNode(node) {
        if (translating || lang !== "en" || node.nodeType !== 3 || isSkipped(node)) return;
        var raw = node.nodeValue;
        // HTML hints often span lines; compare on collapsed whitespace but keep the
        // node's own leading/trailing whitespace when substituting.
        var key = raw.replace(/\s+/g, " ").trim();
        if (!key) return;
        var value = EN[key];
        if (value === undefined) value = EN_NORM[key.replace(/\s+/g, "")];
        if (value === undefined) {
            // Several fragments may share one text node (prefix + reason); apply every
            // match, longest first, until nothing changes.
            var out = key;
            for (var pass = 0; pass < 4; pass++) {
                var changed = false;
                for (var i = 0; i < KEYS.length; i++) {
                    var k = KEYS[i];
                    if (k.length > 1 && out.indexOf(k) !== -1) {
                        out = out.split(k).join(EN[k]);
                        changed = true;
                        break;
                    }
                }
                if (!changed) break;
            }
            if (out !== key) value = out;
        }
        if (value === undefined || value === key) return;
        if (!originals.has(node)) originals.set(node, raw);
        var start = raw.indexOf(raw.trim());
        var end = start < 0 ? raw.length : start + raw.trim().length;
        translating = true;
        node.nodeValue = start < 0 ? value : raw.slice(0, start) + value + raw.slice(end);
        translating = false;
    }

    function translateAttrs(root) {
        if (lang !== "en") return;
        var list = root.querySelectorAll ? root.querySelectorAll("[title],[aria-label],[placeholder]") : [];
        for (var i = 0; i < list.length; i++) {
            var el = list[i];
            ["title", "aria-label", "placeholder"].forEach(function (attr) {
                var value = el.getAttribute(attr);
                if (!value) return;
                var key = value.replace(/\s+/g, " ").trim();
                var mapped = EN[key];
                if (mapped === undefined) return;
                var store = "data-i18n-" + attr;
                if (!el.hasAttribute(store)) el.setAttribute(store, value);
                el.setAttribute(attr, mapped);
            });
        }
    }

    function translateTree(root) {
        if (lang !== "en") return;
        var walker = document.createTreeWalker(root, NodeFilter.SHOW_TEXT, null);
        var node;
        while ((node = walker.nextNode())) translateNode(node);
        translateAttrs(root);
    }

    function restore() {
        var walker = document.createTreeWalker(document.body, NodeFilter.SHOW_TEXT, null);
        var node;
        while ((node = walker.nextNode())) {
            if (originals.has(node)) node.nodeValue = originals.get(node);
        }
        var els = document.querySelectorAll("[data-i18n-title],[data-i18n-aria-label],[data-i18n-placeholder]");
        for (var i = 0; i < els.length; i++) {
            var el = els[i];
            ["title", "aria-label", "placeholder"].forEach(function (attr) {
                var store = "data-i18n-" + attr;
                if (el.hasAttribute(store)) {
                    el.setAttribute(attr, el.getAttribute(store));
                    el.removeAttribute(store);
                }
            });
        }
    }

    function updateSwitch() {
        var buttons = document.querySelectorAll("#lang-switch [data-lang]");
        for (var i = 0; i < buttons.length; i++) {
            var active = buttons[i].getAttribute("data-lang") === lang;
            buttons[i].classList.toggle("active", active);
            buttons[i].setAttribute("aria-pressed", active ? "true" : "false");
        }
    }

    function apply(next, persist) {
        lang = next === "en" ? "en" : "zh";
        document.documentElement.lang = lang === "zh" ? "zh-CN" : "en";
        if (persist) {
            try { localStorage.setItem(STORAGE_KEY, lang); } catch (e) {}
        }
        if (lang === "zh") {
            restore();
        } else {
            translateTree(document.body);
            document.title = document.title === "TEE 模拟器 · MapleSU"
                ? "TEE Simulator · MapleSU" : document.title;
        }
        updateSwitch();
    }

    function detect() {
        try {
            var saved = localStorage.getItem(STORAGE_KEY);
            if (saved === "zh" || saved === "en") return saved;
        } catch (e) {}
        var list = navigator.languages && navigator.languages.length
            ? navigator.languages : [navigator.language || "zh"];
        for (var i = 0; i < list.length; i++) {
            var tag = String(list[i] || "").toLowerCase();
            if (tag.indexOf("zh") === 0) return "zh";
            if (tag.length) return "en";
        }
        return "zh";
    }

    function boot() {
        var switchBox = document.querySelector("#lang-switch");
        if (switchBox) {
            switchBox.addEventListener("click", function (event) {
                var button = event.target.closest("[data-lang]");
                if (!button) return;
                apply(button.getAttribute("data-lang"), true);
                window.dispatchEvent(new CustomEvent("tee-lang", { detail: lang }));
            });
        }
        apply(detect(), false);
        var observer = new MutationObserver(function (mutations) {
            if (lang !== "en") return;
            mutations.forEach(function (mutation) {
                if (mutation.type === "characterData") {
                    translateNode(mutation.target);
                } else {
                    for (var i = 0; i < mutation.addedNodes.length; i++) {
                        var node = mutation.addedNodes[i];
                        if (node.nodeType === 3) translateNode(node);
                        else if (node.nodeType === 1) translateTree(node);
                    }
                }
            });
        });
        observer.observe(document.body, { childList: true, subtree: true, characterData: true });
    }

    window.TEEI18N = {
        t: function (zh) { return lang === "en" && EN[zh] ? EN[zh] : zh; },
        setLang: function (next) { apply(next, true); },
        getLang: function () { return lang; }
    };

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", boot);
    } else {
        boot();
    }
})();
