/* ==========================================================================
   TEE 模拟器 WebUI 主逻辑
   设置项：SOTER 兼容 / KeyBox / 隐藏 Bootloader / 自动 target / 安全补丁
   外加：版本与补丁信息、轻量枫叶特效
   ========================================================================== */

const UI = {
    version: document.getElementById("module-version"),
    soterToggle: document.getElementById("toggle-soter"),
    soterTag: document.getElementById("soter-tag"),
    soterSub: document.getElementById("soter-sub"),
    soterCertsToggle: document.getElementById("toggle-soter-certs"),
    soterCertsSub: document.getElementById("soter-certs-sub"),
    soterCertsHint: document.getElementById("soter-certs-hint"),
    keyboxActive: document.getElementById("keybox-active"),
    keyboxActiveTag: document.getElementById("keybox-active-tag"),
    keyboxSha: document.getElementById("keybox-sha"),
    keyboxSelect: document.getElementById("keybox-select"),
    keyboxApply: document.getElementById("btn-apply-keybox"),
    hideBl: document.getElementById("toggle-hide-bl"),
    autoTarget: document.getElementById("toggle-auto-target"),
    targetSub: document.getElementById("target-sub"),
    patchMode: document.getElementById("patch-mode"),
    patchFixedRow: document.getElementById("patch-fixed-row"),
    patchDate: document.getElementById("patch-date"),
    patchApply: document.getElementById("btn-apply-patch"),
    patchDevice: document.getElementById("patch-device"),
    patchEffective: document.getElementById("patch-effective"),
    kbupdTag: document.getElementById("kbupd-tag"),
    kbupdToggle: document.getElementById("toggle-kbupd"),
    kbupdSub: document.getElementById("kbupd-sub"),
    kbupdSource: document.getElementById("kbupd-source"),
    kbupdCustomRow: document.getElementById("kbupd-custom-row"),
    kbupdCustomUrl: document.getElementById("kbupd-custom-url"),
    kbupdInterval: document.getElementById("kbupd-interval"),
    kbupdSave: document.getElementById("btn-kbupd-save"),
    kbupdNow: document.getElementById("btn-kbupd-now"),
    kbupdLast: document.getElementById("kbupd-last"),
    kbupdResult: document.getElementById("kbupd-result"),
    kbupdNext: document.getElementById("kbupd-next"),
    kbupdUrl: document.getElementById("kbupd-url"),
    scopeTag: document.getElementById("scope-tag"),
    scopeAlert: document.getElementById("scope-alert"),
    scopeAlertText: document.getElementById("scope-alert-text"),
    scopeNarrow: document.getElementById("scope-narrow"),
    scopeSearch: document.getElementById("scope-search"),
    scopeSelectAll: document.getElementById("scope-select-all"),
    scopeInvert: document.getElementById("scope-invert"),
    scopeClear: document.getElementById("scope-clear"),
    scopeCount: document.getElementById("scope-count"),
    scopeList: document.getElementById("scope-list"),
    scopeEmpty: document.getElementById("scope-empty"),
    scopeError: document.getElementById("scope-error"),
    scopeSave: document.getElementById("scope-save"),
    scopeRestore: document.getElementById("scope-restore"),
    scopeRetry: document.getElementById("scope-retry"),
    scopeHint: document.getElementById("scope-hint"),
    verVersion: document.getElementById("ver-version"),
    verAuthor: document.getElementById("ver-author"),
    verDex: document.getElementById("ver-dex"),
    verKeybox: document.getElementById("ver-keybox"),
    verBuild: document.getElementById("ver-build"),
    snowBtn: document.getElementById("btn-snow"),
    pageState: document.getElementById("page-state"),
    pageDetail: document.getElementById("page-detail"),
    backendMode: document.getElementById("backend-mode"),
    hideBlSub: document.getElementById("hide-bl-sub"),
    fixTee: document.getElementById("toggle-fix-tee"),
    fixTeeSub: document.getElementById("fix-tee-sub"),
};

/* --------------------------------- 工具 --------------------------------- */

const text = (el, v, fallback) => {
    if (el) el.textContent = v === undefined || v === null || v === "" ? (fallback || "—") : v;
};

function setBusy(btn, busy, label) {
    if (!btn) return;
    btn.disabled = !!busy;
    if (busy) {
        btn.dataset.label = btn.textContent;
        btn.textContent = label || "处理中…";
    } else if (btn.dataset.label) {
        btn.textContent = btn.dataset.label;
        delete btn.dataset.label;
    }
}

const isOk = (r) => String(r).trim() === "OK";
let supportsKeyboxUpdate = false;
let pageLoading = false;

/* SOTER 证书链：daemon 收到开关后会异步生成身份（几百 ms 到几秒），
   前端只做有上限的轮询，不假设"写完开关就 ready"。 */
const SOTER_CERTS_HINT_ON = "≤1 秒生效；链使用内置 keybox（可验到 Key Attestation CA1）";
const SOTER_CERTS_HINT_OFF = "与 6.0.6 及更早版本行为一致（blob 718 B，无 certs）";
const SOTER_CERTS_POLL_MS = 600;
let soterCertsPollToken = 0;

/* --------------------------- 面板状态与失败登记 --------------------------- */
/* 顶部提示只在“真的有面板读失败”时出现，而且不再写“刷新一下就好”：
   原因来自后端（KSU 下是 webui.sh 的真实报错），卡片里各自带重试按钮。
   KSU 明确不支持的项记进 pageReadOnly，显示“KSU 模式暂不支持（只读）”。 */
const pageFailures = new Map();    /* panelId -> {label, text, level, error} */
const pageReadOnly = new Map();    /* panelId -> {label, text} */

function renderPageState() {
    const state = UI.pageState;
    if (!state) return;
    const detail = UI.pageDetail;
    if (pageLoading) {
        state.textContent = "正在更新设置…";
        if (detail) detail.hidden = true;
        return;
    }
    const failed = [...pageFailures.values()];
    const readOnly = [...pageReadOnly.values()];
    if (!failed.length && !readOnly.length) {
        state.textContent = "设置已更新";
        if (detail) { detail.hidden = true; detail.textContent = ""; }
        return;
    }
    if (failed.length) {
        state.textContent = failed.length + " 项设置未读取";
        if (detail) {
            detail.textContent = failed.map((item) => item.label).join("、") +
                (readOnly.length ? " · 另有 " + readOnly.length + " 项在当前后端不可用" : "") +
                " · 原因见下方卡片";
        }
    } else {
        state.textContent = "已加载 · " + readOnly.length + " 项在当前后端不可用";
        if (detail) detail.textContent = "只读：" + readOnly.map((item) => item.label).join("、");
    }
    if (detail) detail.hidden = false;
}

function noteFailure(id, label, err) {
    const described = Backend.describe(err);
    pageFailures.set(id, { label: label, text: described.text, level: described.level, error: err });
    pageReadOnly.delete(id);
    console.warn("[panel] " + label + " · " + described.text, err);
    if (!pageLoading) renderPageState();
}

function clearFailure(id) {
    const gone = pageFailures.delete(id) | pageReadOnly.delete(id);
    if (gone && !pageLoading) renderPageState();
}

/* 后端在 info 里声明不支持（或运行期返回 unsupported）→ 只读，不假装成功 */
function noteUnavailable(id, label, message) {
    pageReadOnly.set(id, { label: label, text: message });
    pageFailures.delete(id);
    if (!pageLoading) renderPageState();
    return message;
}

function noteReadOnly(id, label, detail) {
    return noteUnavailable(id, label,
        "KSU 模式暂不支持（" + (detail ? detail + " · " : "") + "只读）");
}

/* 卡片头部标签按级别选词：读失败 / 明确不支持 / 后端缺失 */
function tagText(level) {
    if (level === "unsupported") return "KSU 不支持";
    if (level === "unavailable") return "不可用";
    return "读取失败";
}

/* 命令级只读判定：info 声明了 unsupported 就直接返回原因，不再发命令 */
function readOnlyReason(id, label, command) {
    return Backend.supports(command) === false ? noteReadOnly(id, label, command) : null;
}

/* 失败态统一的重试入口：
     failed       → 「重试」重跑本面板；
     unavailable  → 「重新检测」先清掉 $MODDIR/webui.sh 缓存再重跑（装/卸模块后有用）；
     unsupported  → 不给按钮（后端已明确不支持，点也没用），卡片只读。 */
function panelOptions(described, loader) {
    if (described.level === "unsupported") return { readonly: true };
    if (described.level === "unavailable") {
        return {
            readonly: true,
            retryLabel: "重新检测",
            retry: () => { Backend.reset(); loader(); },
        };
    }
    return { retry: loader, retryLabel: "重试" };
}

/* 卡片内的状态条：一句具体原因 + 重试/重新检测按钮。 */
const PanelStatus = (() => {
    const blocks = new WeakMap();

    function block(card) {
        if (!card) return null;
        if (blocks.has(card)) return blocks.get(card);
        const wrap = document.createElement("div");
        wrap.className = "panel-status";
        wrap.hidden = true;
        wrap.setAttribute("role", "status");
        const label = document.createElement("span");
        label.className = "panel-status-text";
        const retry = document.createElement("button");
        retry.type = "button";
        retry.className = "btn panel-status-retry";
        retry.textContent = "重试";
        wrap.appendChild(label);
        wrap.appendChild(retry);
        const head = card.querySelector(".card-head");
        const summary = card.querySelector("summary");
        if (head && head.parentNode === card) head.insertAdjacentElement("afterend", wrap);
        else if (summary && summary.parentNode === card) summary.insertAdjacentElement("afterend", wrap);
        else card.insertBefore(wrap, card.firstChild);
        const entry = { wrap: wrap, label: label, retry: retry };
        blocks.set(card, entry);
        return entry;
    }

    function show(card, message, options) {
        const entry = block(card);
        if (!entry) return;
        entry.label.textContent = message;
        entry.wrap.hidden = false;
        entry.wrap.classList.toggle("is-readonly", !!(options && options.readonly));
        const retry = options && options.retry;
        entry.retry.textContent = (options && options.retryLabel) || "重试";
        entry.retry.hidden = typeof retry !== "function";
        entry.retry.onclick = typeof retry === "function" ? () => { retry(); } : null;
    }

    function clear(card) {
        if (!card || !blocks.has(card)) return;
        const entry = blocks.get(card);
        entry.wrap.hidden = true;
        entry.label.textContent = "";
        entry.retry.hidden = true;
        entry.retry.onclick = null;
    }

    return { show, clear };
})();

/* 卡片选择器：从已有控件往上找，不额外加 id */
const versionCard = () => document.querySelector("details.card-flat");
const soterCard = () => UI.soterToggle.closest(".card");
const keyboxCard = () => UI.keyboxSelect.closest(".card");
const systemCard = () => UI.hideBl.closest(".card");
const patchCard = () => UI.patchMode.closest(".card");
const kbupdCard = () => document.getElementById("keybox-updates");


/* 日期：prop / 空 / 非法值统一显示 */
function prettyDate(v) {
    if (!v) return "未知";
    if (v === "prop") return "跟随设备";
    return v;
}

/* ------------------------------ 读取状态 ------------------------------ */

async function loadVersionInfo() {
    supportsKeyboxUpdate = false;
    try {
        const info = await RequestApi.getVersionInfo();
        text(UI.version, info.version);
        text(UI.verVersion, info.version);
        text(UI.verAuthor, info.author);
        text(UI.verDex, info.dex_short);
        text(UI.verKeybox, info.keybox_short);
        text(UI.verBuild, info.build);
        const version = /^(\d+)\.(\d+)\.(\d+)/.exec(String(info.version || ""));
        supportsKeyboxUpdate = !!version && (Number(version[1]) > 6 ||
            (Number(version[1]) === 6 && (Number(version[2]) > 0 || Number(version[3]) >= 5)));
        document.getElementById("keybox-updates").hidden = !supportsKeyboxUpdate;
        clearFailure("version");
        PanelStatus.clear(versionCard());
        return info;
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("version", "版本信息", err);
        text(UI.version, "读取失败");
        text(UI.verVersion, described.level === "failed" ? "读取失败" : "不可用");
        text(UI.verAuthor, "—");
        text(UI.verDex, "—");
        text(UI.verKeybox, "—");
        text(UI.verBuild, "—");
        document.getElementById("keybox-updates").hidden = true;
        PanelStatus.show(versionCard(), described.text, panelOptions(described, retryVersion));
    }
}

async function retryVersion() {
    const info = await loadVersionInfo();
    if (info && supportsKeyboxUpdate) loadKeyboxUpdate();
}

async function loadSoter() {
    const card = soterCard();
    const readonly = readOnlyReason("soter", "SOTER 兼容", "get soter");
    if (readonly) {
        UI.soterTag.textContent = "KSU 不支持";
        UI.soterTag.classList.remove("is-on");
        UI.soterSub.textContent = readonly;
        UI.soterToggle.disabled = true;
        PanelStatus.show(card, readonly, { readonly: true });
        return;
    }
    try {
        const on = String(await RequestApi.getSoterToggle()).trim() === "1";
        UI.soterToggle.checked = on;
        applySoterUI(on);
        UI.soterToggle.disabled = false;
        clearFailure("soter");
        PanelStatus.clear(card);
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("soter", "SOTER 兼容", err);
        UI.soterTag.textContent = tagText(described.level);
        UI.soterTag.classList.remove("is-on");
        UI.soterSub.textContent = described.text;
        UI.soterToggle.disabled = true;
        PanelStatus.show(card, described.text, panelOptions(described, loadSoter));
    }
}

function applySoterUI(on) {
    UI.soterTag.textContent = on ? "已开启" : "已关闭";
    UI.soterTag.classList.toggle("is-on", on);
    UI.soterSub.textContent = on ? "已启用 · 保存后自动生效（≤1 秒）" : "已关闭 · 使用设备原有行为";
}

/* ------------------------- SOTER 证书链（可选增强） ------------------------- */
/* 状态文字严格按后端三个字段渲染：
     enabled=false                 -> 关闭（默认关闭）
     enabled && identity=ready     -> 已开启：<certs> 段证书链
     enabled && identity≠ready     -> 已开启：身份生成中…
   读取失败/后端不支持            -> 不可用：<原因>
   关闭时 identity 可能是上一次留下的 ready（daemon 只清 saterserver 镜像），
   这里不看它，避免把"已关闭"显示成"已开启"。 */
function applySoterCertsUI(data) {
    const enabled = !!(data && data.enabled);
    const identity = String((data && data.identity) || "missing");
    const certs = Number(data && data.certs);
    UI.soterCertsToggle.checked = enabled;
    if (!enabled) {
        UI.soterCertsSub.textContent = "关闭（默认关闭）";
    } else if (identity === "ready") {
        UI.soterCertsSub.textContent = "已开启：" + (Number.isFinite(certs) ? certs : 0) + " 段证书链";
    } else {
        UI.soterCertsSub.textContent = "已开启：身份生成中…";
    }
    UI.soterCertsHint.textContent = enabled ? SOTER_CERTS_HINT_ON : SOTER_CERTS_HINT_OFF;
    UI.soterCertsToggle.disabled = false;
}

function soterCertsNeedsPoll(data) {
    return !!(data && data.enabled && String(data.identity) !== "ready");
}

async function pollSoterCerts(token, attempts) {
    if (token !== soterCertsPollToken) return;
    try {
        const data = await RequestApi.getSoterCerts();
        if (token !== soterCertsPollToken) return;
        applySoterCertsUI(data);
        clearFailure("soter_certs");
        if (soterCertsNeedsPoll(data) && attempts > 0) {
            setTimeout(() => { pollSoterCerts(token, attempts - 1); }, SOTER_CERTS_POLL_MS);
        }
    } catch (err) {
        /* 轮询失败保留最后一次成功状态；下次手动刷新会重新读。 */
    }
}

async function loadSoterCerts() {
    const readonly = readOnlyReason("soter_certs", "SOTER 证书链", "get soter_certs");
    if (readonly) {
        UI.soterCertsSub.textContent = "不可用：" + readonly;
        UI.soterCertsHint.textContent = "";
        UI.soterCertsToggle.checked = false;
        UI.soterCertsToggle.disabled = true;
        return;
    }
    try {
        const data = await RequestApi.getSoterCerts();
        applySoterCertsUI(data);
        clearFailure("soter_certs");
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("soter_certs", "SOTER 证书链", err);
        UI.soterCertsSub.textContent = "不可用：" + (described.level === "failed"
            ? described.text.replace(/^读取失败：/, "") : described.text);
        UI.soterCertsHint.textContent = "";
        UI.soterCertsToggle.checked = false;
        UI.soterCertsToggle.disabled = true;
    }
}

const keyboxWarning = () => document.getElementById("keybox-warning");

/* The module deliberately does nothing without a keybox; surface that as a banner
   rather than leaving the user to infer it from an empty certificate panel. */
function setKeyboxWarning(show) {
    const node = keyboxWarning();
    if (node) node.hidden = !show;
}

async function loadKeyboxes() {
    const card = keyboxCard();
    const readonly = readOnlyReason("keybox", "KeyBox", "keyboxes");
    if (readonly) {
        UI.keyboxActiveTag.textContent = "KSU 不支持";
        UI.keyboxActiveTag.classList.remove("tag-outline");
        text(UI.keyboxActive, "只读");
        text(UI.keyboxSha, "—");
        UI.keyboxSelect.disabled = true;
        UI.keyboxApply.disabled = true;
        PanelStatus.show(card, readonly, { readonly: true });
        return;
    }
    try {
        const data = await RequestApi.listKeyboxes();
        const items = data.items || [];
        UI.keyboxSelect.innerHTML = "";
        items.forEach((it) => {
            const opt = document.createElement("option");
            opt.value = it.id;
            opt.textContent = it.sha_short && it.sha_short !== "unknown"
                ? `${it.name} · ${it.sha_short}`
                : it.name;
            if (it.id === data.current) opt.selected = true;
            UI.keyboxSelect.appendChild(opt);
        });
        const activeName = data.active_name || data.current_name || "未知";
        text(UI.keyboxActive, activeName);
        text(UI.keyboxSha, data.active_sha_short && data.active_sha_short !== "unknown"
            ? data.active_sha_short
            : "自定义");
        text(UI.keyboxActiveTag, data.active_id === "custom" ? "自定义" : "当前生效");
        UI.keyboxActiveTag.classList.toggle("tag-outline", data.active_id === "custom");
        const available = items.filter((it) => it.available !== false);
        UI.keyboxSelect.disabled = !available.length;
        UI.keyboxApply.disabled = !available.length;
        clearFailure("keybox");
        PanelStatus.clear(card);
        setKeyboxWarning(!data.installed);
        if (!data.installed) {
            PanelStatus.show(card, "未安装 KeyBox：请把 keybox.xml 放到 /data/adb/tricky_store/keybox.xml",
                { readonly: true });
        } else if (!available.length) {
            PanelStatus.show(card, "没有可用的内置 KeyBox", { readonly: true });
        }
    } catch (err) {
        const described = Backend.describe(err);
        setKeyboxWarning(true);
        noteFailure("keybox", "KeyBox", err);
        UI.keyboxActiveTag.textContent = tagText(described.level);
        UI.keyboxActiveTag.classList.remove("tag-outline");
        text(UI.keyboxActive, "未读取");
        text(UI.keyboxSha, "—");
        UI.keyboxSelect.innerHTML = "";
        UI.keyboxSelect.disabled = true;
        UI.keyboxApply.disabled = true;
        PanelStatus.show(card, described.text, panelOptions(described, loadKeyboxes));
    }
}

/* ---- 系统伪装：三个开关各自独立读取，卡片级汇总原因 + 重试 ---- */
const SYSTEM_PANELS = ["hide_bl", "auto_target", "fix_tee"];

function refreshSystemPanel() {
    const card = systemCard();
    if (!card) return;
    const failed = SYSTEM_PANELS.filter((id) => pageFailures.has(id));
    const readonly = SYSTEM_PANELS.filter((id) => pageReadOnly.has(id));
    if (failed.length) {
        const levels = failed.map((id) => pageFailures.get(id).level);
        const options = levels.indexOf("unavailable") >= 0
            ? { readonly: true, retryLabel: "重新检测", retry: () => { Backend.reset(); loadSystemToggles(); } }
            : { retry: loadSystemToggles, retryLabel: "重试" };
        PanelStatus.show(card, failed.map((id) => pageFailures.get(id).text).join("；"), options);
    } else if (readonly.length) {
        PanelStatus.show(card, readonly.map((id) => pageReadOnly.get(id).text).join("；"), { readonly: true });
    } else {
        PanelStatus.clear(card);
    }
}

async function loadHideBootloader() {
    const readonly = readOnlyReason("hide_bl", "解锁状态兼容", "get hide_bootloader");
    if (readonly) {
        UI.hideBl.disabled = true;
        text(UI.hideBlSub, readonly);
        return;
    }
    try {
        const on = String(await RequestApi.getHideBootloaderToggle()).trim() === "1";
        UI.hideBl.checked = on;
        UI.hideBl.disabled = false;
        text(UI.hideBlSub, "使用模块已有的设备状态兼容设置");
        clearFailure("hide_bl");
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("hide_bl", "解锁状态兼容", err);
        UI.hideBl.disabled = true;
        text(UI.hideBlSub, described.text);
    }
}

async function loadAutoThirdApp() {
    const readonly = readOnlyReason("auto_target", "应用列表自动维护", "get auto_third_app");
    if (readonly) {
        UI.autoTarget.disabled = true;
        text(UI.targetSub, readonly);
        return;
    }
    try {
        const auto = String(await RequestApi.getAutoThirdAppToggle()).trim() === "1";
        UI.autoTarget.checked = auto;
        UI.autoTarget.disabled = false;
        clearFailure("auto_target");
        await refreshTargetSub(auto);
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("auto_target", "应用列表自动维护", err);
        UI.autoTarget.disabled = true;
        text(UI.targetSub, described.text);
    }
}

/* TEE 修复：三版 dex 都没有 tee_status 消费者（TEE 是否可用由运行时 KeyStore 探针
 * t4/j 判定），Ultra 后端 /getFixTeeToggle 已按 unsupported:fix_tee 应答。这里不再发
 * 命令、直接置灰只读，避免再次显示"开了就修复"的假状态。 */
const FIX_TEE_UNSUPPORTED = "未实现 · TEE 判定由运行时 KeyStore 探针决定，无需开关";

async function loadFixTee() {
    if (!UI.fixTee) return;
    UI.fixTee.checked = false;
    UI.fixTee.disabled = true;
    text(UI.fixTeeSub, FIX_TEE_UNSUPPORTED);
}

async function loadSystemToggles() {
    await Promise.all([loadHideBootloader(), loadAutoThirdApp(), loadFixTee()]);
    refreshSystemPanel();
}

async function refreshTargetSub(auto) {
    if (!UI.targetSub) return;
    if (!auto) {
        UI.targetSub.textContent = "已关闭 · 保留手动维护的应用列表";
        return;
    }
    let count = null;
    try {
        const raw = await RequestApi.getTargetTxt();
        count = raw.split("\n").filter((l) => l.trim().length > 0).length;
    } catch (err) {
        /* 只读计数失败不影响开关状态显示（KSU 的 webui.sh 可能没有 targets 命令） */
    }
    UI.targetSub.textContent = count === null
        ? "已开启 · 安装 / 卸载应用后自动刷新"
        : `已开启 · 当前 ${count} 个目标应用`;
}

let patchMode = "auto";

async function loadSecurityPatch() {
    const card = patchCard();
    const readonly = readOnlyReason("patch", "安全补丁日期", "get patch");
    if (readonly) {
        applyPatchModeUI("auto");
        text(UI.patchDevice, "只读");
        text(UI.patchEffective, "只读");
        UI.patchApply.disabled = true;
        UI.patchDate.disabled = true;
        UI.patchMode.querySelectorAll("button").forEach((button) => { button.disabled = true; });
        PanelStatus.show(card, readonly, { readonly: true });
        return;
    }
    try {
        const data = await RequestApi.getSecurityPatch();
        patchMode = data.mode === "fixed" ? "fixed" : "auto";
        applyPatchModeUI(patchMode);
        if (patchMode === "fixed" && data.value) UI.patchDate.value = data.value;
        text(UI.patchDevice, prettyDate(data.device));
        text(UI.patchEffective, prettyDate(data.effective));
        UI.patchApply.disabled = false;
        UI.patchDate.disabled = false;
        UI.patchMode.querySelectorAll("button").forEach((button) => { button.disabled = false; });
        clearFailure("patch");
        PanelStatus.clear(card);
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("patch", "安全补丁日期", err);
        text(UI.patchDevice, tagText(described.level));
        text(UI.patchEffective, tagText(described.level));
        UI.patchApply.disabled = true;
        UI.patchDate.disabled = true;
        UI.patchMode.querySelectorAll("button").forEach((button) => { button.disabled = true; });
        PanelStatus.show(card, described.text, panelOptions(described, loadSecurityPatch));
    }
}

function applyPatchModeUI(mode) {
    patchMode = mode;
    [...UI.patchMode.querySelectorAll(".seg-btn")].forEach((b) => {
        b.classList.toggle("is-active", b.dataset.mode === mode);
    });
    UI.patchFixedRow.classList.toggle("is-visible", mode === "fixed");
}

/* ------------------------------ 写入状态 ------------------------------ */

async function saveToggle(el, setter, okMsg, failMsg) {
    const want = el.checked;
    el.disabled = true;
    try {
        const r = await setter(want);
        if (!isOk(r)) throw new Error(String(r));
        showToast(okMsg);
        return true;
    } catch (err) {
        el.checked = !want;
        console.error(failMsg, err);
        showToast(failMsg + "：" + Backend.reason(err));
        return false;
    } finally {
        el.disabled = false;
    }
}

async function onSoterToggle() {
    const want = UI.soterToggle.checked;
    UI.soterToggle.disabled = true;
    applySoterUI(want);
    try {
        const r = await RequestApi.setSoterToggle(want);
        if (!isOk(r)) throw new Error(String(r));
        applySoterUI(want);
        showToast(want ? "已开启 SOTER 兼容，保存后自动生效（≤1 秒）"
                       : "已关闭 SOTER 兼容，保存后自动生效（≤1 秒）");
    } catch (err) {
        UI.soterToggle.checked = !want;
        applySoterUI(!want);
        console.error("写入 SOTER 开关失败:", err);
        showToast("SOTER 开关写入失败：" + Backend.reason(err));
    } finally {
        UI.soterToggle.disabled = false;
    }
}

async function onSoterCertsToggle() {
    const want = UI.soterCertsToggle.checked;
    soterCertsPollToken += 1;
    const token = soterCertsPollToken;
    UI.soterCertsToggle.disabled = true;
    UI.soterCertsSub.textContent = want ? "已开启：身份生成中…" : "关闭（默认关闭）";
    UI.soterCertsHint.textContent = want ? SOTER_CERTS_HINT_ON : SOTER_CERTS_HINT_OFF;
    try {
        const r = await RequestApi.setSoterCerts(want);
        if (!isOk(r)) throw new Error(String(r));
        clearFailure("soter_certs");
        showToast(want ? "已开启 SOTER 证书链，≤1 秒生效"
                       : "已关闭 SOTER 证书链，回到旧版行为（无 certs）");
        await pollSoterCerts(token, 8);   /* 立即读一次，未 ready 时继续有上限地轮询 */
        /* 写已经成功；即使随后的读失败，也不能把开关永久锁死。 */
        UI.soterCertsToggle.disabled = false;
    } catch (err) {
        console.error("写入 SOTER 证书链开关失败:", err);
        showToast("SOTER 证书链开关写入失败：" + Backend.reason(err));
        await loadSoterCerts();           /* 回到后端真实状态，不保留乐观勾选 */
    }
}

async function onApplyKeybox() {
    const id = UI.keyboxSelect.value;
    if (!id) return;
    setBusy(UI.keyboxApply, true, "切换中…");
    try {
        const r = await RequestApi.setKeybox(id);
        if (!isOk(r)) throw new Error(String(r));
        await loadKeyboxes();
        await loadVersionInfo();
        showToast("KeyBox 已切换，下一次证书请求即生效");
    } catch (err) {
        console.error("切换 KeyBox 失败:", err);
        showToast("KeyBox 切换失败：" + Backend.reason(err));
    } finally {
        setBusy(UI.keyboxApply, false);
    }
}

async function onApplyPatch() {
    let value = "auto";
    if (patchMode === "fixed") {
        value = (UI.patchDate.value || "").trim();
        if (!/^\d{4}-\d{2}-\d{2}$/.test(value)) {
            showToast("请先选择有效日期");
            return;
        }
    }
    setBusy(UI.patchApply, true, "应用中…");
    try {
        const r = await RequestApi.setSecurityPatch(value);
        if (!isOk(r)) throw new Error(String(r));
        await loadSecurityPatch();
        showToast(patchMode === "fixed" ? "已固定安全补丁日期" : "已改为自动跟随设备");
    } catch (err) {
        console.error("写入安全补丁配置失败:", err);
        showToast("安全补丁配置写入失败：" + Backend.reason(err));
    } finally {
        setBusy(UI.patchApply, false);
    }
}

/* --------------------------- 证书（keybox）自动更新 --------------------------- */

/* 后端 last_result 的失败原因 -> 中文说明（未知原因原样显示） */
const KBUPD_REASON_TEXT = {
    bad_url: "更新源地址无效",
    download_failed: "下载失败（curl / wget 均不可用或网络错误）",
    empty_download: "下载内容为空",
    invalid_keybox: "内容不是合法 keybox",
    not_xml: "内容不是 keybox XML",
    empty: "内容为空",
    too_large: "文件过大",
    no_attestation: "缺少 AndroidAttestation 节点",
    no_key: "缺少 Key 节点",
    no_private_key: "缺少 PrivateKey 节点",
    no_cert_chain: "缺少 CertificateChain 节点",
    no_pem_cert: "没有 PEM 证书",
    bad_cert_der: "证书无法解码",
    write_tmp_failed: "写入临时文件失败",
    replace_failed: "替换 keybox.xml 失败",
    bad_custom_url: "自定义 URL 无效",
    unknown_source: "未知更新源",
    bad_interval: "间隔参数无效",
    save_failed: "配置保存失败",
};

function kbupdReasonText(result) {
    if (!result || result === "never") return "—";
    if (result === "ok") return "成功";
    const raw = String(result).replace(/^fail:/, "");
    /* 形如 invalid_keybox:no_key / download_failed(curl=22) */
    const head = raw.split("(")[0].split(":")[0];
    const detail = raw.includes(":") ? raw.split(":")[1] : "";
    const base = KBUPD_REASON_TEXT[head] || raw;
    return detail ? `失败 · ${base}（${detail}）` : `失败 · ${base}`;
}

function formatEpochText(sec) {
    const n = Number(sec);
    if (!n || n <= 0) return "";
    const d = new Date(n * 1000);
    const pad = (v) => String(v).padStart(2, "0");
    return `${d.getFullYear()}-${pad(d.getMonth() + 1)}-${pad(d.getDate())} ${pad(d.getHours())}:${pad(d.getMinutes())}`;
}

async function loadKeyboxUpdate() {
    const card = kbupdCard();
    const readonly = readOnlyReason("kbu", "证书自动更新", "kbu_status");
    if (readonly) {
        UI.kbupdTag.textContent = "KSU 不支持";
        UI.kbupdTag.classList.remove("is-on");
        UI.kbupdSub.textContent = readonly;
        [UI.kbupdToggle, UI.kbupdSource, UI.kbupdCustomUrl, UI.kbupdInterval,
            UI.kbupdSave, UI.kbupdNow].forEach((control) => { control.disabled = true; });
        PanelStatus.show(card, readonly, { readonly: true });
        return;
    }
    try {
        const data = await RequestApi.keyboxUpdateStatus();
        renderKeyboxUpdate(data);
        [UI.kbupdToggle, UI.kbupdSource, UI.kbupdCustomUrl, UI.kbupdInterval,
            UI.kbupdSave, UI.kbupdNow].forEach((control) => { control.disabled = false; });
        clearFailure("kbu");
        PanelStatus.clear(card);
    } catch (err) {
        const described = Backend.describe(err);
        noteFailure("kbu", "证书自动更新", err);
        UI.kbupdTag.textContent = tagText(described.level);
        UI.kbupdTag.classList.remove("is-on");
        UI.kbupdSub.textContent = described.text;
        [UI.kbupdToggle, UI.kbupdSource, UI.kbupdCustomUrl, UI.kbupdInterval,
            UI.kbupdSave, UI.kbupdNow].forEach((control) => { control.disabled = true; });
        PanelStatus.show(card, described.text, panelOptions(described, loadKeyboxUpdate));
    }
}

function renderKeyboxUpdate(data) {
    if (!data) return;
    const sources = data.sources || [];
    const select = UI.kbupdSource;
    const ids = sources.map((s) => s.id).join(",");
    /* 只在源列表变化时重建 option，避免每次刷新都丢失选择 */
    if (select.dataset.ids !== ids) {
        select.innerHTML = "";
        sources.forEach((s) => {
            const opt = document.createElement("option");
            opt.value = s.id;
            opt.textContent = s.name;
            if (s.url) opt.title = s.url;
            select.appendChild(opt);
        });
        select.dataset.ids = ids;
    }
    if (data.source) select.value = data.source;

    UI.kbupdToggle.checked = !!data.enabled;
    /* 输入框正在编辑时不要被后台刷新覆盖 */
    if (document.activeElement !== UI.kbupdInterval) {
        UI.kbupdInterval.value = String(data.intervalHours === undefined ? 24 : data.intervalHours);
    }
    if (document.activeElement !== UI.kbupdCustomUrl) {
        UI.kbupdCustomUrl.value = data.customUrl || "";
    }
    applyKeyboxUpdateUI(data);
}

function applyKeyboxUpdateUI(data) {
    const enabled = !!data.enabled;
    const interval = Number(data.intervalHours || 0);
    const sourceName = data.sourceName || data.source || "—";

    UI.kbupdTag.textContent = enabled ? "已启用" : "未启用";
    UI.kbupdTag.classList.toggle("is-on", enabled);
    UI.kbupdTag.classList.toggle("tag-outline", !enabled);

    UI.kbupdSub.textContent = enabled
        ? (interval > 0 ? `每 ${interval} 小时检查一次 · 源 ${sourceName}` : `每次开机检查 · 源 ${sourceName}`)
        : "未启用 · 仅手动更新";

    UI.kbupdCustomRow.classList.toggle("is-visible", data.source === "custom");

    UI.kbupdLast.textContent = data.lastCheckEpoch ? formatEpochText(data.lastCheckEpoch) : "从未";
    UI.kbupdResult.textContent = kbupdReasonText(data.lastResult);
    UI.kbupdResult.classList.toggle("is-error", String(data.lastResult || "").indexOf("fail:") === 0);
    UI.kbupdNext.textContent = !enabled
        ? "—"
        : (interval > 0 && data.nextEpoch ? formatEpochText(data.nextEpoch) : "下次开机");
    UI.kbupdUrl.textContent = data.effectiveUrl || "—";
}

function keyboxUpdatePayload() {
    return {
        enabled: !!UI.kbupdToggle.checked,
        source: UI.kbupdSource.value,
        customUrl: (UI.kbupdCustomUrl.value || "").trim(),
        intervalHours: Number(String(UI.kbupdInterval.value || "0").trim()),
    };
}

function validateKeyboxUpdatePayload(payload) {
    if (!Number.isInteger(payload.intervalHours) || payload.intervalHours < 0 || payload.intervalHours > 8760) {
        showToast("间隔需为 0–8760 之间的整数小时");
        return false;
    }
    if (payload.source === "custom" && !/^https?:\/\/.+/i.test(payload.customUrl)) {
        showToast("请填写有效的 http(s) URL");
        return false;
    }
    return true;
}

async function saveKeyboxUpdate(payload, okMsg) {
    const r = await RequestApi.keyboxUpdateConfig(payload);
    if (!isOk(r)) throw new Error(String(r).replace(/^FAILED:/, ""));
    await loadKeyboxUpdate();
    showToast(okMsg);
}

async function onToggleKeyboxUpdate() {
    const want = UI.kbupdToggle.checked;
    const payload = keyboxUpdatePayload();
    if (!validateKeyboxUpdatePayload(payload)) {
        UI.kbupdToggle.checked = !want;
        return;
    }
    UI.kbupdToggle.disabled = true;
    try {
        await saveKeyboxUpdate(payload, want ? "已启用证书自动更新" : "已关闭证书自动更新");
    } catch (err) {
        UI.kbupdToggle.checked = !want;
        console.error("写入证书自动更新开关失败:", err);
        showToast("证书自动更新开关写入失败");
    } finally {
        UI.kbupdToggle.disabled = false;
    }
}

async function onSaveKeyboxUpdate() {
    const payload = keyboxUpdatePayload();
    if (!validateKeyboxUpdatePayload(payload)) return;
    setBusy(UI.kbupdSave, true, "保存中…");
    try {
        await saveKeyboxUpdate(payload, "证书更新配置已保存");
    } catch (err) {
        console.error("保存证书更新配置失败:", err);
        showToast("证书更新配置保存失败：" + Backend.reason(err));
    } finally {
        setBusy(UI.kbupdSave, false);
    }
}

async function onUpdateKeyboxNow() {
    setBusy(UI.kbupdNow, true, "更新中…");
    try {
        const data = await RequestApi.keyboxUpdateNow();
        if (data && data.status) renderKeyboxUpdate(data.status);
        if (data && data.ok) {
            await loadKeyboxes();
            await loadVersionInfo();
            showToast("证书已更新，下一次证书请求即生效");
        } else {
            const reason = (data && data.reason) || "unknown";
            showToast("更新失败：" + kbupdReasonText("fail:" + reason).replace(/^失败 · /, ""));
        }
    } catch (err) {
        console.error("立即更新证书失败:", err);
        showToast("立即更新请求失败：" + Backend.reason(err));
    } finally {
        setBusy(UI.kbupdNow, false);
    }
}

/* --------------------------- Soter 接管范围 --------------------------- */

/* 双后端说明（本文件不再自带一套 ksu.exec）：
 *   Ultra（Pro 原生模块）：WebUI 由模块 .so 的 HTTP 服务提供 → POST /soterScope*。
 *   KSU/Lite（脚本模块） ：`sh $MODDIR/core/webui.sh scope list|set|setall`；
 *     webui.sh 缺失或明确回 unsupported 时，回退到改动前就在用的
 *     `app_process ... mpl.ScopeCli <cmd>`（模块根探测与 CLI 解析都在 request.js 的
 *     ModuleRoot / ScopeCli 里，是原来的实现，没有重写）。
 *   两条分支返回同一份 JSON（packages / selected / defaultAll），UI 不区分模式。
 * 页面只通过 RequestApi.soterScope() / soterScopeSet() 访问，不再有本地 api()。 */

/* 卡片：列表 / 搜索 / 全选反选清空 / 保存 / 恢复全放行。
 * 几百个应用也要流畅：DOM 只建一次（DocumentFragment 批量插入），
 * 过滤只切 class，不重建 innerHTML。 */
const ScopeCard = (() => {
    const state = {
        items: [], byPkg: new Map(), total: 0, selected: 0, visible: 0,
        defaultAll: false, filter: "", busy: false, loading: false,
        loaded: false, error: null, readonly: false,
    };
    const collator = (typeof Intl !== "undefined" && Intl.Collator)
        ? new Intl.Collator("zh-Hans-CN", { sensitivity: "base", numeric: true })
        : null;
    let filterTimer = 0;

    function compareLabel(a, b) {
        const left = a.label || a.pkg;
        const right = b.label || b.pkg;
        if (collator) {
            const result = collator.compare(left, right);
            if (result !== 0) return result;
        } else if (left !== right) {
            return left < right ? -1 : 1;
        }
        return a.pkg < b.pkg ? -1 : (a.pkg > b.pkg ? 1 : 0);
    }

    function avatarColor(seed) {
        const body = String(seed || "?");
        let hash = 0;
        for (let i = 0; i < body.length; i += 1) hash = (hash * 31 + body.charCodeAt(i)) % 360;
        return "hsl(" + hash + ", 58%, 46%)";
    }

    function fallbackAvatar(item) {
        const span = document.createElement("span");
        span.className = "scope-avatar scope-avatar-fallback";
        const label = String(item.label || item.pkg || "?");
        span.textContent = (label.trim().charAt(0) || "?").toUpperCase();
        span.style.background = avatarColor(item.pkg);
        return span;
    }

    function buildRow(item) {
        const row = document.createElement("label");
        row.className = "scope-row";
        row.dataset.pkg = item.pkg;
        row.setAttribute("role", "listitem");

        let avatar;
        if (item.icon) {
            avatar = document.createElement("img");
            avatar.className = "scope-avatar";
            avatar.alt = "";
            avatar.width = 96;      /* CLI 给的 96px 源图，CSS 里按 48px 显示（2x 清晰） */
            avatar.height = 96;
            avatar.loading = "lazy";
            avatar.decoding = "async";
            avatar.src = "data:image/png;base64," + item.icon;
            avatar.addEventListener("error", () => {
                const fallback = fallbackAvatar(item);
                if (avatar.parentNode) avatar.parentNode.replaceChild(fallback, avatar);
            }, { once: true });
        } else {
            avatar = fallbackAvatar(item);
        }

        const main = document.createElement("span");
        main.className = "scope-main";
        const name = document.createElement("span");
        name.className = "scope-name";
        name.textContent = item.label || item.pkg;
        const meta = document.createElement("span");
        meta.className = "scope-meta";
        meta.textContent = item.pkg + " · uid " + item.uid;
        main.appendChild(name);
        main.appendChild(meta);

        const check = document.createElement("input");
        check.type = "checkbox";
        check.className = "scope-check";
        check.checked = item.selected;
        check.setAttribute("aria-label", (item.label || item.pkg) + " 是否接管");

        row.appendChild(avatar);
        row.appendChild(main);
        row.appendChild(check);
        item.el = row;
        item.cb = check;
        return row;
    }

    function renderSkeleton() {
        const frag = document.createDocumentFragment();
        for (let i = 0; i < 6; i += 1) {
            const row = document.createElement("div");
            row.className = "scope-row is-skeleton";
            const avatar = document.createElement("span");
            avatar.className = "scope-avatar";
            const main = document.createElement("span");
            main.className = "scope-main";
            const name = document.createElement("span");
            name.className = "scope-name";
            const meta = document.createElement("span");
            meta.className = "scope-meta";
            main.appendChild(name);
            main.appendChild(meta);
            row.appendChild(avatar);
            row.appendChild(main);
            frag.appendChild(row);
        }
        UI.scopeList.replaceChildren(frag);
    }

    function render() {
        const scrollTop = UI.scopeList.scrollTop;
        const frag = document.createDocumentFragment();
        state.items.forEach((item) => { frag.appendChild(item.el || buildRow(item)); });
        UI.scopeList.replaceChildren(frag);
        UI.scopeList.scrollTop = scrollTop;
        applyFilter();
        updateAlert();
    }

    function toggleEmpty() {
        let message = "";
        if (state.loaded && state.total === 0) message = "没有可接管的应用";
        else if (state.loaded && state.visible === 0) message = "没有匹配的应用";
        if (message) {
            text(UI.scopeEmpty, message);
            UI.scopeEmpty.hidden = false;
        } else {
            UI.scopeEmpty.hidden = true;
        }
    }

    function updateCounts() {
        const filtering = state.filter.trim().length > 0;
        text(UI.scopeCount, filtering
            ? "已选 " + state.selected + " / 共 " + state.total + " · 筛选 " + state.visible
            : "已选 " + state.selected + " / 共 " + state.total);
        const busy = state.busy || state.loading || state.readonly;
        UI.scopeSave.disabled = busy || state.selected === 0;
        UI.scopeRestore.disabled = busy;
        UI.scopeNarrow.disabled = busy || state.selected === 0;
        UI.scopeSelectAll.disabled = busy || state.visible === 0;
        UI.scopeInvert.disabled = busy || state.visible === 0;
        UI.scopeClear.disabled = busy || state.selected === 0;
        UI.scopeSearch.disabled = !!state.readonly;
    }

    function updateAlert() {
        UI.scopeAlert.hidden = !(state.loaded && state.defaultAll);
        if (state.loaded && state.defaultAll) {
            text(UI.scopeAlertText, "当前 = 全部应用接管（默认）");
            text(UI.scopeNarrow, state.selected
                ? "收窄到选中应用（" + state.selected + "）"
                : "收窄到选中应用");
        }
        let tag = "读取中";
        if (state.readonly) tag = "不可用";
        else if (state.error) tag = "读取失败";
        else if (state.loaded) tag = state.defaultAll ? "全部接管" : "已收窄";
        text(UI.scopeTag, tag);
        UI.scopeTag.classList.toggle("is-on", !!state.loaded && state.defaultAll);
        UI.scopeTag.classList.toggle("tag-outline", !!state.loaded && !state.defaultAll);
        if (UI.scopeHint) {
            text(UI.scopeHint, Backend.isKsu()
                ? "KSU/Lite：经 ksu.exec 调用 $MODDIR/core/webui.sh（scope list/set/setall），不可用时回退 mpl.ScopeCli。"
                : "Ultra：通过模块 HTTP 服务（/soterScope）读写。");
        }
    }

    function applyFilter() {
        const needle = state.filter.trim().toLowerCase();
        let visible = 0;
        state.items.forEach((item) => {
            const hit = !needle || item.haystack.indexOf(needle) >= 0;
            item.visible = hit;
            if (hit) visible += 1;
            if (item.el) item.el.classList.toggle("is-hidden", !hit);
        });
        state.visible = visible;
        updateCounts();
        toggleEmpty();
    }

    function setSelected(item, on) {
        if (!item || item.selected === on) return;
        item.selected = on;
        state.selected += on ? 1 : -1;
        if (item.cb) item.cb.checked = on;
    }

    /* 全选 / 反选 / 清空：只作用于当前过滤结果 */
    function bulk(kind) {
        state.items.forEach((item) => {
            if (!item.visible) return;
            if (kind === "all") setSelected(item, true);
            else if (kind === "none") setSelected(item, false);
            else setSelected(item, !item.selected);
        });
        updateCounts();
        updateAlert();
    }

    function addPayloadError(data) {
        if (!data || data.ok !== false) return null;
        const reason = data.error || data.detail || "unknown";
        return String(reason) + (data.stderr ? "：" + String(data.stderr) : "");
    }

    function applyData(data) {
        const failure = addPayloadError(data);
        if (failure) throw new Error(failure);
        const packages = Array.isArray(data && data.packages) ? data.packages : [];
        const selectedUids = new Set(
            (data && Array.isArray(data.selected) ? data.selected : []).map((value) => Number(value))
        );
        const defaultAll = !!(data && data.defaultAll);

        state.defaultAll = defaultAll;
        state.items = packages.map((raw) => {
            const pkg = String((raw && raw.pkg) || "");
            const label = String((raw && raw.label) || pkg);
            const uid = Number(raw && raw.uid) || 0;
            return {
                pkg: pkg,
                uid: uid,
                label: label,
                icon: (raw && typeof raw.icon === "string") ? raw.icon : "",
                haystack: (label + "\n" + pkg).toLowerCase(),
                selected: defaultAll ? true : selectedUids.has(uid),
                visible: true,
                el: null,
                cb: null,
            };
        }).filter((item) => item.pkg.length > 0);
        state.items.sort(compareLabel);
        state.byPkg = new Map(state.items.map((item) => [item.pkg, item]));
        state.total = state.items.length;
        state.selected = state.items.reduce((sum, item) => sum + (item.selected ? 1 : 0), 0);
        state.visible = state.total;
        render();
    }

    function setBusy(on, label) {
        state.busy = !!on;
        if (on) {
            UI.scopeSave.dataset.label = UI.scopeSave.textContent;
            UI.scopeSave.textContent = label || "保存中…";
            UI.scopeRestore.disabled = true;
        } else if (UI.scopeSave.dataset.label) {
            UI.scopeSave.textContent = UI.scopeSave.dataset.label;
            delete UI.scopeSave.dataset.label;
        }
        updateCounts();
        updateAlert();
    }

    async function load(force) {
        if (state.loading) return;
        if (force) Backend.reset();   /* 重试时重新探测模块根（换模块 / 换 dex 后仍可用） */
        state.loading = true;
        state.error = null;
        state.readonly = false;
        UI.scopeError.hidden = true;
        UI.scopeRetry.hidden = true;
        if (!state.loaded) renderSkeleton();
        updateCounts();
        try {
            const data = await RequestApi.soterScope();
            applyData(data);
            state.loaded = true;
            clearFailure("scope");
        } catch (err) {
            const described = Backend.describe(err);
            state.error = err;
            state.loaded = false;
            state.readonly = described.level !== "failed";
            state.items = [];
            state.byPkg = new Map();
            state.total = 0;
            state.selected = 0;
            state.visible = 0;
            state.defaultAll = false;
            UI.scopeList.replaceChildren();
            text(UI.scopeError, described.text);
            UI.scopeError.hidden = false;
            /* 明确不支持 → 没有可重试的东西；后端缺失 → 给「重新检测」（清缓存后再探一次） */
            UI.scopeRetry.hidden = described.level === "unsupported";
            UI.scopeRetry.textContent = described.level === "unavailable" ? "重新检测" : "重试";
            if (state.readonly) noteUnavailable("scope", "Soter 接管范围", described.text);
            else noteFailure("scope", "Soter 接管范围", err);
            console.error("读取 Soter 接管范围失败:", described.text, err);
        } finally {
            state.loading = false;
            applyFilter();
            updateAlert();
            updateCounts();
        }
    }

    async function save(all) {
        if (state.busy || state.loading || state.readonly) return;
        const uids = [];
        state.items.forEach((item) => { if (item.selected) uids.push(item.uid); });
        if (!all && uids.length === 0) {
            showToast("请至少选择一个应用");
            return;
        }
        setBusy(true, all ? "恢复中…" : "保存中…");
        try {
            const payload = all ? { all: true } : { uids: uids };
            const resp = await RequestApi.soterScopeSet(payload);
            if (!resp || resp.ok === false) {
                throw new Error((resp && (resp.error || resp.detail || resp.stderr)) || "unknown");
            }
            const count = (resp && typeof resp.count === "number") ? resp.count : uids.length;
            showToast(all ? "已恢复全放行" : "已保存 · 接管 " + count + " 个应用");
            await load(true);
        } catch (err) {
            console.error("保存 Soter 接管范围失败:", err);
            showToast((all ? "恢复全放行失败：" : "保存失败：") + Backend.reason(err));
        } finally {
            setBusy(false);
        }
    }

    function init() {
        UI.scopeSearch.addEventListener("input", () => {
            if (filterTimer) clearTimeout(filterTimer);
            filterTimer = setTimeout(() => {
                state.filter = UI.scopeSearch.value || "";
                applyFilter();
            }, 120);
        }, { passive: true });

        UI.scopeList.addEventListener("change", (event) => {
            const check = event.target;
            if (!check || !check.classList || !check.classList.contains("scope-check")) return;
            const row = check.closest ? check.closest(".scope-row") : null;
            const item = row ? state.byPkg.get(row.dataset.pkg) : null;
            if (!item) return;
            item.selected = !!check.checked;
            state.selected += item.selected ? 1 : -1;
            updateCounts();
            updateAlert();
        });

        UI.scopeSelectAll.addEventListener("click", () => bulk("all"));
        UI.scopeInvert.addEventListener("click", () => bulk("invert"));
        UI.scopeClear.addEventListener("click", () => bulk("none"));
        UI.scopeSave.addEventListener("click", () => save(false));
        UI.scopeRestore.addEventListener("click", () => save(true));
        UI.scopeNarrow.addEventListener("click", () => save(false));
        UI.scopeRetry.addEventListener("click", () => load(true));
        updateAlert();
        updateCounts();
        toggleEmpty();
    }

    return { init, load };
})();

/* --------------------------- Local presentation --------------------------- */
const Appearance = (() => {
    let style = "miuix", scheme = "auto";
    function save() {
        try {
            localStorage.setItem("maplesu-tee-style", style);
            localStorage.setItem("maplesu-tee-scheme", scheme);
        } catch (e) { /* Browser storage is optional. */ }
    }
    function apply() {
        const hosted = window.MapleSUAppearance;
        const root = document.documentElement;
        const selectedStyle = hosted ? hosted.style : style;
        const selectedScheme = hosted ? hosted.scheme : scheme;
        document.getElementById("appearance-summary").textContent = hosted
            ? "跟随 MapleSU 管理器的界面风格与配色。" : "选择适合你的使用方式。";
        root.dataset.style = selectedStyle;
        root.dataset.scheme = selectedScheme === "auto"
            ? (matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light") : selectedScheme;
        document.querySelectorAll("#style-choice button").forEach((button) => {
            button.classList.toggle("is-active", button.dataset.value === selectedStyle);
            button.setAttribute("aria-pressed", String(button.dataset.value === selectedStyle));
            button.disabled = !!hosted;
        });
        document.querySelectorAll("#scheme-choice button").forEach((button) => {
            button.classList.toggle("is-active", button.dataset.value === selectedScheme);
            button.setAttribute("aria-pressed", String(button.dataset.value === selectedScheme));
            button.disabled = !!hosted;
        });
        Snow.sync();
    }
    function init() {
        try { style = localStorage.getItem("maplesu-tee-style") || style;
            scheme = localStorage.getItem("maplesu-tee-scheme") || scheme; } catch (e) {}
        if (!["miuix", "material"].includes(style)) style = "miuix";
        if (!["auto", "light", "dark"].includes(scheme)) scheme = "auto";
        document.querySelectorAll("#style-choice button").forEach((button) => {
            button.onclick = () => { style = button.dataset.value; save(); apply(); };
        });
        document.querySelectorAll("#scheme-choice button").forEach((button) => {
            button.onclick = () => { scheme = button.dataset.value; save(); apply(); };
        });
        const dialog = document.getElementById("appearance-dialog");
        document.getElementById("btn-theme").onclick = () => dialog.showModal();
        document.getElementById("btn-theme-done").onclick = () => dialog.close();
        dialog.addEventListener("click", (event) => { if (event.target === dialog) {
            const rect = dialog.getBoundingClientRect();
            if (event.clientX < rect.left || event.clientX > rect.right || event.clientY < rect.top || event.clientY > rect.bottom) dialog.close();
        } });
        matchMedia("(prefers-color-scheme: dark)").addEventListener("change", apply);
        window.addEventListener("maplesuappearancechange", apply);
        apply();
    }
    return { init };
})();

/* A small cached maple path, capped at 30fps. Hidden/reduced-motion pages do no work. */
const Snow = (() => {
    const KEY = "mpl_webui_snow";
    let canvas, ctx, leaves = [], frameId = 0, lastFrame = 0, enabled = true;
    const reduced = matchMedia("(prefers-reduced-motion: reduce)");
    const leafPath = new Path2D("M0 -12 L3 -5 L7 -8 L6 -2 L12 -3 L8 2 L9 5 L3 5 L0 10 L-3 5 L-9 5 L-8 2 L-12 -3 L-6 -2 L-7 -8 L-3 -5 Z");
    function resize() {
        if (!canvas) return;
        const dpr = Math.min(devicePixelRatio || 1, 1.5);
        canvas.width = Math.round(innerWidth * dpr); canvas.height = Math.round(innerHeight * dpr);
        ctx.setTransform(dpr, 0, 0, dpr, 0, 0);
    }
    function paint(time) {
        if (!frameId) return;
        frameId = requestAnimationFrame(paint);
        if (time - lastFrame < 32) return;
        const delta = lastFrame ? Math.min(time - lastFrame, 64) / 1000 : 0;
        lastFrame = time;
        ctx.clearRect(0, 0, innerWidth, innerHeight);
        leaves.forEach((leaf) => {
            leaf.y += leaf.speed * delta; leaf.phase += delta * .7;
            if (leaf.y > innerHeight + 24) leaf.y = -24;
            ctx.save(); ctx.translate(leaf.x + Math.sin(leaf.phase) * 20, leaf.y);
            ctx.rotate(Math.sin(leaf.phase) * .55);
            ctx.scale(leaf.size * (.45 + Math.abs(Math.cos(leaf.phase)) * .55), leaf.size);
            ctx.globalAlpha = .16; ctx.fillStyle = leaf.color; ctx.fill(leafPath);
            ctx.strokeStyle = leaf.color; ctx.lineWidth = 1; ctx.beginPath(); ctx.moveTo(0, -6); ctx.lineTo(0, 13); ctx.stroke(); ctx.restore();
        });
    }
    function sync() {
        if (!canvas) return;
        const motion = !window.MapleSUAppearance || window.MapleSUAppearance.motion !== false;
        const active = enabled && motion && !reduced.matches && !document.hidden && document.documentElement.dataset.style !== "material";
        UI.snowBtn.setAttribute("aria-pressed", String(enabled));
        if (active && !frameId) { lastFrame = 0; frameId = requestAnimationFrame(paint); }
        else if (!active) { cancelAnimationFrame(frameId); frameId = 0; ctx.clearRect(0, 0, innerWidth, innerHeight); }
    }
    function set(on) { enabled = on; try { localStorage.setItem(KEY, on ? "1" : "0"); } catch (e) {} sync(); }
    function init() {
        canvas = document.getElementById("snow"); ctx = canvas.getContext("2d");
        if (!ctx) { canvas = null; return; }
        try { enabled = localStorage.getItem(KEY) !== "0"; } catch (e) {}
        resize();
        const count = navigator.deviceMemory && navigator.deviceMemory <= 2 ? 4 : 10;
        leaves = Array.from({ length: count }, (_, i) => ({ x: Math.random() * innerWidth,
            y: Math.random() * innerHeight, phase: Math.random() * 6, speed: 10 + Math.random() * 12,
            size: .45 + Math.random() * .45, color: ["#dc6947", "#d99536", "#be573a"][i % 3] }));
        window.addEventListener("resize", resize, { passive: true });
        document.addEventListener("visibilitychange", sync);
        reduced.addEventListener("change", sync);
        sync();
    }
    return { init, set, sync };
})();

/* -------------------------------- 绑定 -------------------------------- */

function bind() {
    UI.soterToggle.addEventListener("change", onSoterToggle);
    UI.soterCertsToggle.addEventListener("change", onSoterCertsToggle);
    UI.keyboxApply.addEventListener("click", onApplyKeybox);
    UI.patchApply.addEventListener("click", onApplyPatch);

    UI.hideBl.addEventListener("change", () =>
        saveToggle(UI.hideBl, RequestApi.setHideBootloaderToggle,
            "设置已保存，重启生效", "设备状态兼容设置保存失败")
    );

    UI.autoTarget.addEventListener("change", async () => {
        const ok = await saveToggle(UI.autoTarget, RequestApi.setAutoThirdAppToggle,
            "设置已保存，重启生效", "应用列表设置保存失败");
        if (ok) refreshTargetSub(UI.autoTarget.checked);
    });

    /* TEE 修复已按"未实现"置灰只读（loadFixTee），不再绑定 change 处理器。 */

    [...UI.patchMode.querySelectorAll(".seg-btn")].forEach((btn) => {
        btn.addEventListener("click", () => {
            applyPatchModeUI(btn.dataset.mode);
            if (btn.dataset.mode === "auto") onApplyPatch();
        });
    });

    UI.snowBtn.addEventListener("click", () => {
        const on = UI.snowBtn.getAttribute("aria-pressed") !== "true";
        Snow.set(on);
    });

    /* ---- 证书自动更新 ---- */
    UI.kbupdToggle.addEventListener("change", onToggleKeyboxUpdate);
    UI.kbupdSave.addEventListener("click", onSaveKeyboxUpdate);
    UI.kbupdNow.addEventListener("click", onUpdateKeyboxNow);
    UI.kbupdSource.addEventListener("change", () => {
        UI.kbupdCustomRow.classList.toggle("is-visible", UI.kbupdSource.value === "custom");
    });

    /* ---- Soter 接管范围 ---- */
    ScopeCard.init();
}

/* -------------------------------- 入口 -------------------------------- */

function applyBackendMode() {
    if (!UI.backendMode) return;
    const ksu = Backend.isKsu();
    UI.backendMode.textContent = ksu ? "KSU / Lite" : "Ultra";
    UI.backendMode.title = ksu
        ? "通过 window.ksu.exec 调用 $MODDIR/core/webui.sh"
        : "通过模块 HTTP 服务读写";
}

async function refreshPage() {
    if (pageLoading) return;
    pageLoading = true;
    /* 手动刷新时重新探测 $MODDIR / webui.sh（装、卸模块后不用整页重载） */
    Backend.reset();
    const reload = document.getElementById("btn-reload");
    reload.disabled = true;
    renderPageState();
    /* 接管范围要跑一次 CLI（可能几百个应用 + 图标），单独加载，不拖慢其它卡片 */
    const scope = ScopeCard.load();
    const version = loadVersionInfo().then(async () => {
        if (supportsKeyboxUpdate) await loadKeyboxUpdate();
    });
    try {
        await Promise.all([version, loadSoter(), loadSoterCerts(), loadKeyboxes(),
            loadSystemToggles(), loadSecurityPatch()]);
    } finally {
        pageLoading = false;
        reload.disabled = false;
        renderPageState();
    }
    await scope;   /* 只等它把内部错误状态渲染完，不影响上面的状态文案 */
    renderPageState();
}

async function onReady() {
    [UI.soterToggle, UI.soterCertsToggle, UI.hideBl, UI.autoTarget, UI.fixTee,
        UI.keyboxSelect, UI.keyboxApply,
        UI.patchDate, UI.patchApply, UI.kbupdToggle, UI.kbupdSource, UI.kbupdCustomUrl,
        UI.kbupdInterval, UI.kbupdSave, UI.kbupdNow,
        UI.scopeSearch, UI.scopeSelectAll, UI.scopeInvert, UI.scopeClear,
        UI.scopeSave, UI.scopeRestore, UI.scopeNarrow].forEach((control) => {
        if (control) control.disabled = true;
    });
    UI.patchMode.querySelectorAll("button").forEach((button) => { button.disabled = true; });
    applyBackendMode();
    Snow.init();
    Appearance.init();
    bind();
    document.getElementById("btn-reload").onclick = refreshPage;
    await refreshPage();
}

document.addEventListener("DOMContentLoaded", onReady);

/* ---- diagnostics: verbose logging toggle + log export ------------------- */
(function diagnostics() {
    const toggle = document.getElementById("toggle-debug");
    const button = document.getElementById("btn-export-logs");
    const sub = document.getElementById("diag-sub");
    const hint = document.getElementById("diag-hint");
    if (!toggle || !button || !sub) return;

    if (!Backend.isKsu()) {
        /* the native (Ultra) backend has no log endpoint; stay honest about it */
        sub.textContent = "仅 KernelSU 后端支持";
        button.disabled = true;
        toggle.disabled = true;
        return;
    }

    const setBusy = (busy) => {
        button.disabled = busy;
        toggle.disabled = busy;
    };

    const refresh = async () => {
        try {
            const data = await Backend.call("get debug");
            toggle.checked = !!(data && data.enabled);
            sub.textContent = toggle.checked ? "已开启 · 记录更详细的日志" : "已关闭 · 仅记录关键事件";
            toggle.disabled = false;
            button.disabled = false;
        } catch (err) {
            const described = Backend.describe(err);
            sub.textContent = described.text;
            toggle.disabled = true;
            button.disabled = true;
        }
    };

    toggle.addEventListener("change", async () => {
        const want = toggle.checked;
        setBusy(true);
        try {
            await Backend.call("set debug", want ? "1" : "0");
            sub.textContent = want ? "已开启 · 记录更详细的日志" : "已关闭 · 仅记录关键事件";
            if (typeof showToast === "function") showToast(want ? "详细日志已开启" : "详细日志已关闭");
        } catch (err) {
            toggle.checked = !want;
            sub.textContent = Backend.describe(err).text;
        } finally {
            setBusy(false);
        }
    });

    button.addEventListener("click", async () => {
        setBusy(true);
        const previous = sub.textContent;
        sub.textContent = "正在导出…";
        try {
            const result = await Backend.call("logs");
            const path = (result && result.path) || "";
            const bytes = (result && result.bytes) || 0;
            sub.textContent = path ? "已导出：" + path : "已导出";
            if (hint) {
                hint.textContent = path
                    ? "文件大小 " + bytes + " 字节。提交前请再检查一遍，确认没有个人信息。"
                    : "导出完成，但未返回路径。";
            }
            if (path && navigator.clipboard) {
                navigator.clipboard.writeText(path).catch(() => {});
            }
            if (typeof showToast === "function") showToast("日志已导出");
        } catch (err) {
            sub.textContent = Backend.describe(err).text;
        } finally {
            setBusy(false);
            if (sub.textContent === "正在导出…") sub.textContent = previous;
        }
    });

    refresh();
})();
