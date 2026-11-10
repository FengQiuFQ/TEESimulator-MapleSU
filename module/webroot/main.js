/* ==========================================================================
   MapleSU TEE WebUI: cards and their state.

   Each card keeps what it last learned in a slot and draws itself from that slot, so
   switching language only has to call renderAll(). Every read carries a token: an answer
   older than the latest read or write of that slot is dropped, so a slow response can
   never overwrite newer state. All text comes from TEEI18N, and every value reaches the
   page through textContent, never as HTML.
   ========================================================================== */

const t = TEEI18N.t;
const $ = (id) => document.getElementById(id);

const DASH = "—";
const KEYBOX_PATH = "/data/adb/tricky_store/keybox.xml";
const KEYBOX_POLL_MS = 15000;
const CERTS_POLL_MS = 800;
const CERTS_POLL_ATTEMPTS = 10;

function slot(extra) {
    return Object.assign({ token: 0, status: "loading", data: null, err: null, saving: false }, extra);
}

const state = {
    info: slot(),
    soter: slot(),
    certs: slot({ pollToken: 0 }),
    keybox: slot({ pick: null, optionsKey: "", applying: false }),
    kbu: slot({ status: "idle" }),
    hideBl: slot(),
    autoTarget: slot({ count: null }),
    patch: slot({ mode: "auto" }),
    debug: slot({ status: "idle", result: null }),
    takeover: slot({ status: "idle" }),
    compat: slot({ status: "idle", hidden: true, showAll: false }),
};

let pageLoading = false;

/* --------------------------------- helpers -------------------------------- */

function setText(el, value) {
    el.textContent = value === undefined || value === null || value === "" ? DASH : String(value);
}

function setChip(el, tone, text) {
    el.hidden = !text;
    el.textContent = text || "";
    if (tone) el.setAttribute("data-tone", tone);
    else el.removeAttribute("data-tone");
}

/* A button stays disabled for as long as it shows a busy label. */
function setEnabled(control, on) {
    control.disabled = !on || !!(control.dataset && control.dataset.busyKey);
}

function setBusy(button, key) {
    if (key) {
        button.dataset.busyKey = key;
        button.disabled = true;
        button.textContent = t(key);
    } else {
        delete button.dataset.busyKey;
        button.disabled = false;
        button.textContent = t(button.getAttribute("data-i18n"));
    }
}

let toastTimer = 0;

function showToast(message, isError) {
    const toast = $("toast");
    toast.textContent = message;
    toast.classList.add("is-visible");
    if (toastTimer) clearTimeout(toastTimer);
    toastTimer = setTimeout(() => toast.classList.remove("is-visible"), isError ? 5000 : 2500);
}

const isOk = (reply) => String(reply).trim() === "OK";

/* The words for a token the backend answers with, such as write_failed, or null. */
function tokenWords(token) {
    const keys = ["backend.token." + token, "kbu.reason." + token];
    for (let i = 0; i < keys.length; i += 1) {
        if (TEEI18N.has(keys[i])) return t(keys[i]);
    }
    return null;
}

/* Handles write_failed, invalid_keybox:no_key and download_failed(curl=6,wget=127).
   Returns null for anything it does not recognise. */
function tokenText(raw) {
    const match = /^([A-Za-z_]+)(?:[:(]([^)]*)\)?)?$/.exec(String(raw || "").replace(/^FAILED:/, ""));
    if (!match) return null;
    const base = tokenWords(match[1]);
    if (!base) return null;
    if (!match[2]) return base;
    return t("err.withDetail", { message: base, detail: tokenWords(match[2]) || match[2] });
}

function errorText(err) {
    const normalized = asBackendError(err, "unknown");
    if (normalized.code === "backend") {
        const words = tokenText(normalized.detail);
        if (words) return words;
    }
    const message = t("err." + normalized.code);
    return normalized.detail ? t("err.withDetail", { message: message, detail: normalized.detail }) : message;
}

function describeError(err) {
    const info = Backend.describe(err);
    if (info.level === "unsupported") {
        return { level: info.level, text: t("err.panelUnsupported", { detail: info.detail || DASH }) };
    }
    const key = info.level === "unavailable" ? "err.panelUnavailable" : "err.panelFailed";
    return { level: info.level, text: t(key, { reason: errorText(err) }) };
}

function setErrorChip(chip, err) {
    const level = Backend.describe(err).level;
    if (level === "unsupported") setChip(chip, null, t("common.unsupported"));
    else if (level === "unavailable") setChip(chip, null, t("common.unavailable"));
    else setChip(chip, "err", t("common.readFailed"));
}

function requireSupport(command) {
    if (Backend.supports(command) === false) throw backendError("unsupported", command);
}

/* Runs a read into a slot. Returns false when a newer read or write has taken over.
   A quiet read (the background poll) keeps the last good state if it fails. */
async function read(target, task, options) {
    target.token += 1;
    const token = target.token;
    try {
        const data = await task();
        if (token !== target.token) return false;
        target.status = "ready";
        target.data = data;
        target.err = null;
    } catch (err) {
        if (token !== target.token) return false;
        if (options && options.quiet && target.status === "ready") return false;
        target.status = "error";
        target.err = err;
        console.warn("[panel]", err && err.message);
    }
    return true;
}

/* The status bar under a card's heading: one reason, and a retry button when retrying
   can help. spec is null, or { text, info, retryKey, onRetry }. */
const PanelBar = (() => {
    const bars = new WeakMap();

    function bar(card) {
        if (bars.has(card)) return bars.get(card);
        const wrap = document.createElement("div");
        wrap.className = "panel-status";
        wrap.hidden = true;
        const label = document.createElement("span");
        label.className = "panel-status-text";
        const retry = document.createElement("button");
        retry.type = "button";
        retry.className = "btn btn-small";
        wrap.appendChild(label);
        wrap.appendChild(retry);
        const head = card.querySelector(".card-head") || card.querySelector("summary");
        if (head) head.insertAdjacentElement("afterend", wrap);
        else card.insertBefore(wrap, card.firstChild);
        const entry = { wrap: wrap, label: label, retry: retry };
        bars.set(card, entry);
        return entry;
    }

    function show(card, spec) {
        if (!spec) {
            if (bars.has(card)) bars.get(card).wrap.hidden = true;
            return;
        }
        const entry = bar(card);
        entry.label.textContent = spec.text;
        entry.wrap.classList.toggle("is-info", !!spec.info);
        entry.wrap.hidden = false;
        entry.retry.hidden = typeof spec.onRetry !== "function";
        entry.retry.textContent = spec.retryKey ? t(spec.retryKey) : "";
        entry.retry.onclick = typeof spec.onRetry === "function" ? spec.onRetry : null;
    }

    return { show };
})();

/* A bar for whatever failed in these slots: nothing to retry when the backend says it
   cannot; a fresh module probe first when the backend itself is missing. */
function problemBar(card, slots, reload) {
    const errors = slots.filter((item) => item.status === "error").map((item) => item.err);
    if (!errors.length) {
        PanelBar.show(card, null);
        return;
    }
    const described = errors.map(describeError);
    const texts = described.map((item) => item.text).filter((text, i, all) => all.indexOf(text) === i);
    const levels = described.map((item) => item.level);
    if (levels.indexOf("failed") >= 0) {
        PanelBar.show(card, { text: texts.join(" · "), retryKey: "common.retry", onRetry: reload });
    } else if (levels.indexOf("unavailable") >= 0) {
        PanelBar.show(card, {
            text: texts.join(" · "),
            retryKey: "common.redetect",
            onRetry: () => { Backend.reset(); reload(); },
        });
    } else {
        PanelBar.show(card, { text: texts.join(" · "), info: true });
    }
}

/* Writes one switch. On failure the switch goes back and the toast says why. */
async function writeSwitch(input, target, write, failKey) {
    const want = input.checked;
    input.disabled = true;
    target.saving = true;
    target.token += 1;
    try {
        const reply = await write(want);
        if (!isOk(reply)) throw backendError("backend", String(reply));
        target.status = "ready";
        target.data = want;
        target.err = null;
        return true;
    } catch (err) {
        input.checked = !want;
        console.warn("[write]", err && err.message);
        showToast(t(failKey, { reason: errorText(err) }), true);
        return false;
    } finally {
        target.saving = false;
    }
}

/* ------------------------------- page status ------------------------------ */

function renderStatus() {
    const stateEl = $("page-state");
    const detail = $("page-detail");
    if (pageLoading) {
        stateEl.textContent = t("status.loading");
        detail.hidden = true;
        return;
    }
    const panels = [
        [state.info, "about.versionPanel"], [state.soter, "soter.title"], [state.certs, "soter.certsPanel"],
        [state.keybox, "keybox.title"], [state.kbu, "kbu.title"], [state.hideBl, "system.hideBl"],
        [state.autoTarget, "system.auto"], [state.patch, "patch.title"], [state.debug, "diag.debug"],
        [state.takeover, "exp.takeover"], [ScopeCard.problem(), "scope.title"],
    ];
    const failed = [];
    const readonly = [];
    panels.forEach((entry) => {
        if (entry[0].status !== "error") return;
        const level = Backend.describe(entry[0].err).level;
        (level === "unsupported" ? readonly : failed).push(t(entry[1]));
    });
    const separator = t("status.separator");
    if (failed.length) {
        stateEl.textContent = t("status.failed", { count: failed.length });
        detail.textContent = t("status.detailFailed", { items: failed.join(separator) });
        detail.classList.remove("is-info");
        detail.hidden = false;
    } else if (readonly.length) {
        stateEl.textContent = t("status.readonly", { count: readonly.length });
        detail.textContent = t("status.detailReadonly", { items: readonly.join(separator) });
        detail.classList.add("is-info");
        detail.hidden = false;
    } else {
        stateEl.textContent = t("status.ready");
        detail.hidden = true;
    }
}

function renderBackend() {
    const ksu = Backend.isKsu();
    const chip = $("backend-mode");
    chip.textContent = t(ksu ? "backend.ksu" : "backend.ultra");
    chip.title = t(ksu ? "backend.ksuHint" : "backend.ultraHint");
    setText($("ver-backend"), chip.textContent);
}

/* -------------------------------- about ----------------------------------- */

async function loadVersionInfo() {
    await read(state.info, () => RequestApi.getVersionInfo());
    renderInfo();
    renderKbu();
}

function renderInfo() {
    const s = state.info;
    const data = s.status === "ready" ? s.data : {};
    $("module-version").textContent = s.status === "error" ? t("common.readFailed") : (data.version || "");
    setText($("ver-version"), data.version);
    setText($("ver-author"), data.author);
    setText($("ver-dex"), data.dex_short);
    setText($("ver-keybox"), data.keybox_short);
    setText($("ver-build"), data.build);
    problemBar($("about-card"), [s], async () => {
        await loadVersionInfo();
        if (state.kbu.status === "idle" || state.kbu.status === "error") loadKbu();
        renderStatus();
    });
}

/* ---------------------------------- SOTER ---------------------------------- */

async function loadSoterCard() {
    await Promise.all([loadSoter(), loadCerts()]);
}

async function loadSoter() {
    await read(state.soter, async () => {
        requireSupport("get soter");
        return String(await RequestApi.getSoterToggle()).trim() === "1";
    });
    renderSoter();
}

async function loadCerts() {
    const fresh = await read(state.certs, () => {
        requireSupport("get soter_certs");
        return RequestApi.getSoterCerts();
    });
    renderSoter();
    if (fresh && certsPending()) pollCerts(CERTS_POLL_ATTEMPTS);
}

const certsPending = () => {
    const s = state.certs;
    return s.status === "ready" && s.data.enabled && s.data.identity !== "ready";
};

/* The daemon generates the identity some time after the switch is written, so this
   keeps looking for a while instead of assuming it is ready. */
function pollCerts(attempts) {
    state.certs.pollToken += 1;
    const pollToken = state.certs.pollToken;
    const step = async (left) => {
        if (pollToken !== state.certs.pollToken || left <= 0) return;
        await read(state.certs, () => RequestApi.getSoterCerts(), { quiet: true });
        if (pollToken !== state.certs.pollToken) return;
        renderSoter();
        if (certsPending()) setTimeout(() => step(left - 1), CERTS_POLL_MS);
    };
    setTimeout(() => step(attempts), CERTS_POLL_MS);
}

function renderSoter() {
    const s = state.soter;
    const toggle = $("toggle-soter");
    const chip = $("soter-chip");
    if (s.status === "ready") {
        toggle.checked = !!s.data;
        toggle.disabled = s.saving;
        setChip(chip, s.data ? "on" : null, t(s.data ? "common.on" : "common.off"));
        $("soter-sub").textContent = t(s.data ? "soter.subOn" : "soter.subOff");
    } else {
        toggle.disabled = true;
        if (s.status === "error") setErrorChip(chip, s.err);
        else setChip(chip, null, "");
        $("soter-sub").textContent = s.status === "error" ? DASH : t("common.loading");
    }

    const c = state.certs;
    const certsToggle = $("toggle-soter-certs");
    const certsSub = $("soter-certs-sub");
    const certsHint = $("soter-certs-hint");
    if (c.status === "ready") {
        const enabled = !!c.data.enabled;
        certsToggle.checked = enabled;
        certsToggle.disabled = c.saving;
        if (!enabled) certsSub.textContent = t("soter.certsOff");
        else if (c.data.identity === "ready") certsSub.textContent = t("soter.certsReady", { count: Number(c.data.certs) || 0 });
        else certsSub.textContent = t("soter.certsPending");
        certsHint.textContent = t(enabled ? "soter.certsHintOn" : "soter.certsHintOff");
    } else {
        certsToggle.disabled = true;
        certsSub.textContent = c.status === "error" ? DASH : t("common.loading");
        certsHint.textContent = "";
    }
    certsHint.hidden = !certsHint.textContent;
    problemBar($("soter-card"), [s, c], loadSoterCard);
}

async function onSoterToggle() {
    const input = $("toggle-soter");
    const want = input.checked;
    const saved = await writeSwitch(input, state.soter, RequestApi.setSoterToggle, "soter.saveFailed");
    if (saved) showToast(t(want ? "soter.toastOn" : "soter.toastOff"));
    renderSoter();
}

async function onCertsToggle() {
    const input = $("toggle-soter-certs");
    const want = input.checked;
    const c = state.certs;
    c.pollToken += 1;
    c.token += 1;
    c.saving = true;
    input.disabled = true;
    c.status = "ready";
    c.data = { enabled: want, identity: "missing", certs: 0 };
    renderSoter();
    try {
        const reply = await RequestApi.setSoterCerts(want);
        if (!isOk(reply)) throw backendError("backend", String(reply));
        c.saving = false;
        showToast(t(want ? "soter.certsToastOn" : "soter.certsToastOff"));
        await loadCerts();
    } catch (err) {
        c.saving = false;
        showToast(t("soter.certsSaveFailed", { reason: errorText(err) }), true);
        await loadCerts();
    }
}

/* --------------------------------- KeyBox ---------------------------------- */

async function loadKeyboxes(options) {
    await read(state.keybox, () => {
        requireSupport("keyboxes");
        return RequestApi.listKeyboxes();
    }, options);
    renderKeybox();
}

function keyboxActiveName(data) {
    if (!data.installed || data.active_id === "none") return t("keybox.nameNone");
    if (data.active_id === "custom") return t("keybox.nameCustom");
    return data.active_name || data.current_name || t("common.unknown");
}

function keyboxOptions(data) {
    const available = data.items.filter((item) => item.available !== false);
    if (available.length) {
        return available.map((item) => ({
            value: item.id,
            label: item.sha_short && item.sha_short !== "unknown" ? item.name + " · " + item.sha_short : item.name,
        }));
    }
    return [{ value: "", label: t(data.installed ? "keybox.customOption" : "keybox.noneOption") }];
}

/* Rebuilt only when the list really changed: the background poll must not throw away
   what the user has picked but not applied yet, or close an open menu. */
function renderKeyboxSelect(data) {
    const select = $("keybox-select");
    const s = state.keybox;
    const options = keyboxOptions(data);
    const key = JSON.stringify(options);
    if (key !== s.optionsKey && document.activeElement !== select) {
        s.optionsKey = key;
        while (select.firstChild) select.removeChild(select.firstChild);
        options.forEach((option) => {
            const node = document.createElement("option");
            node.value = option.value;
            node.textContent = option.label;
            select.appendChild(node);
        });
    }
    const values = options.map((option) => option.value);
    if (s.pick !== null && values.indexOf(s.pick) >= 0) select.value = s.pick;
    else if (values.indexOf(data.current) >= 0) select.value = data.current;
    return values.some((value) => value.length > 0);
}

function renderKeybox() {
    const s = state.keybox;
    const chip = $("keybox-chip");
    const select = $("keybox-select");
    const apply = $("btn-apply-keybox");
    const banner = $("keybox-warning");
    if (s.status === "ready") {
        const data = s.data;
        const canSwitch = renderKeyboxSelect(data);
        setText($("keybox-active"), keyboxActiveName(data));
        setText($("keybox-sha"), data.active_sha_short && data.active_sha_short !== "unknown" && data.active_sha_short !== DASH
            ? data.active_sha_short : "");
        if (!data.installed) setChip(chip, "warn", t("keybox.chipNone"));
        else if (data.active_id === "custom") setChip(chip, null, t("keybox.chipCustom"));
        else setChip(chip, "on", t("keybox.chipActive"));
        select.disabled = !canSwitch || s.applying;
        setEnabled(apply, canSwitch && !s.applying);

        banner.hidden = !!data.installed;
        $("keybox-warning-body").textContent = t("keybox.warnBody", { path: KEYBOX_PATH });
        if (!data.installed) {
            let text = t("keybox.probeMissing", { path: KEYBOX_PATH });
            if (data.probe.exists && !data.probe.size) text = t("keybox.probeEmpty");
            else if (data.probe.exists) text = t("keybox.probeUnreadable");
            PanelBar.show($("keybox-card"), { text: text, info: true });
        } else if (!canSwitch) {
            PanelBar.show($("keybox-card"), { text: t("keybox.customLocked"), info: true });
        } else {
            PanelBar.show($("keybox-card"), null);
        }
        return;
    }
    /* A failed read says nothing about whether a keybox is installed, so the banner that
       claims the module is inactive only follows a real answer from the backend. */
    banner.hidden = true;
    setText($("keybox-active"), "");
    setText($("keybox-sha"), "");
    select.disabled = true;
    apply.disabled = true;
    if (s.status === "error") setErrorChip(chip, s.err);
    else setChip(chip, null, "");
    problemBar($("keybox-card"), [s], () => { loadKeyboxes().then(renderStatus); });
}

async function onApplyKeybox() {
    const s = state.keybox;
    const id = $("keybox-select").value;
    if (!id || s.applying) return;
    s.applying = true;
    setBusy($("btn-apply-keybox"), "keybox.switching");
    renderKeybox();
    s.token += 1;
    try {
        const reply = await RequestApi.setKeybox(id);
        if (!isOk(reply)) throw backendError("backend", String(reply));
        s.pick = null;
        await Promise.all([loadKeyboxes(), loadVersionInfo()]);
        showToast(t("keybox.switched"));
    } catch (err) {
        console.warn("[keybox]", err && err.message);
        showToast(t("keybox.switchFailed", { reason: errorText(err) }), true);
    } finally {
        s.applying = false;
        setBusy($("btn-apply-keybox"), null);
        renderKeybox();
    }
}

/* A keybox can be added or replaced outside this page, so look again while the page is
   visible. The loop always reschedules itself; a hidden page just skips its turn. */
function startKeyboxPoll() {
    const poll = async () => {
        if (!document.hidden && !pageLoading && !state.keybox.applying) {
            await loadKeyboxes({ quiet: true });
            renderStatus();
        }
        setTimeout(poll, KEYBOX_POLL_MS);
    };
    setTimeout(poll, KEYBOX_POLL_MS);
    document.addEventListener("visibilitychange", () => {
        if (!document.hidden && !pageLoading && !state.keybox.applying) loadKeyboxes({ quiet: true });
    });
}

/* --------------------------- certificate auto-update ----------------------- */

function kbuAvailable() {
    const info = state.info;
    if (info.status !== "ready") return false;
    const version = /^(\d+)\.(\d+)\.(\d+)/.exec(String(info.data.version || ""));
    if (!version) return false;
    const major = Number(version[1]);
    const minor = Number(version[2]);
    return major > 6 || (major === 6 && (minor > 0 || Number(version[3]) >= 5));
}

async function loadKbu() {
    if (!kbuAvailable()) {
        state.kbu.status = "idle";
        renderKbu();
        return;
    }
    const fresh = await read(state.kbu, () => {
        requireSupport("kbu_status");
        return RequestApi.keyboxUpdateStatus();
    });
    if (fresh && state.kbu.status === "ready") syncKbuInputs(state.kbu.data);
    renderKbu();
}

function kbuSourceName(source) {
    if (source.id === "custom") return t("kbu.sourceCustom");
    return source.name || source.id;
}

/* Fields being edited are left alone. */
function syncKbuInputs(data) {
    const interval = $("kbu-interval");
    const url = $("kbu-custom-url");
    if (document.activeElement !== interval) interval.value = String(data.intervalHours);
    if (document.activeElement !== url) url.value = data.customUrl || "";
    renderKbuSources(data);
    $("kbu-source").value = data.source;
}

function renderKbuSources(data) {
    const select = $("kbu-source");
    const keep = select.value;
    while (select.firstChild) select.removeChild(select.firstChild);
    data.sources.forEach((source) => {
        const option = document.createElement("option");
        option.value = source.id;
        option.textContent = kbuSourceName(source);
        if (source.url) option.title = source.url;
        select.appendChild(option);
    });
    if (keep) select.value = keep;
}

function kbuResultText(result) {
    if (!result || result === "never") return DASH;
    if (result === "ok") return t("kbu.ok");
    const raw = String(result).replace(/^fail:/, "");
    return t("kbu.failed", { reason: tokenText(raw) || raw });
}

function renderKbu() {
    const card = $("kbu-card");
    const s = state.kbu;
    card.hidden = !kbuAvailable();
    if (card.hidden) return;
    const chip = $("kbu-chip");
    const controls = [$("toggle-kbu"), $("kbu-source"), $("kbu-custom-url"), $("kbu-interval"), $("btn-kbu-save"), $("btn-kbu-now")];
    const ksu = Backend.isKsu();
    $("kbu-hint").textContent = t(ksu ? "kbu.hintKsu" : "kbu.hintUltra");
    if (s.status !== "ready") {
        controls.forEach((control) => { control.disabled = true; });
        if (s.status === "error") setErrorChip(chip, s.err);
        else setChip(chip, null, "");
        $("kbu-sub").textContent = s.status === "error" ? DASH : t("common.loading");
        ["kbu-last", "kbu-result", "kbu-next", "kbu-url"].forEach((id) => setText($(id), ""));
        $("kbu-kept").hidden = true;
        $("kbu-custom-row").hidden = true;
        problemBar(card, [s], () => { loadKbu().then(renderStatus); });
        return;
    }
    const data = s.data;
    const enabled = !!data.enabled;
    const interval = Number(data.intervalHours) || 0;
    const known = data.sources.filter((source) => source.id === data.source)[0];
    const sourceName = known ? kbuSourceName(known) : (data.sourceName || data.source || DASH);
    renderKbuSources(data);
    controls.forEach((control) => setEnabled(control, !s.saving));
    $("toggle-kbu").checked = enabled;
    setChip(chip, enabled ? "on" : null, t(enabled ? "kbu.chipOn" : "kbu.chipOff"));
    if (!enabled) $("kbu-sub").textContent = t("kbu.subOff");
    else if (interval > 0) $("kbu-sub").textContent = t("kbu.subHours", { count: interval, source: sourceName });
    else $("kbu-sub").textContent = t("kbu.subBoot", { source: sourceName });
    const kept = enabled && data.autoState === "kept";
    $("kbu-kept").hidden = !kept;
    $("kbu-custom-row").hidden = $("kbu-source").value !== "custom";
    setText($("kbu-last"), data.lastCheckEpoch ? TEEI18N.date(data.lastCheckEpoch) : t("kbu.never"));
    setText($("kbu-result"), kbuResultText(data.lastResult));
    $("kbu-result").classList.toggle("text-err", String(data.lastResult || "").indexOf("fail:") === 0);
    setText($("kbu-next"), !enabled ? "" : kbuNextText(data, interval, kept));
    setText($("kbu-url"), data.effectiveUrl);
    PanelBar.show(card, null);
}

/* With interval 0 webui.sh still gives a time while a run is pending, such as a retry
   after a failure. What the Ultra backend sends there is not known, so it says next boot. */
function kbuNextText(data, interval, kept) {
    if (kept) return t("kbu.nextKept");
    if (data.nextEpoch && (interval > 0 || Backend.isKsu())) return TEEI18N.date(data.nextEpoch);
    return t("kbu.nextBoot");
}

function kbuDraft() {
    return {
        enabled: !!$("toggle-kbu").checked,
        source: $("kbu-source").value,
        customUrl: ($("kbu-custom-url").value || "").trim(),
        intervalHours: Number(String($("kbu-interval").value || "").trim() || "NaN"),
    };
}

function kbuPayloadProblem(payload) {
    if (!Number.isInteger(payload.intervalHours) || payload.intervalHours < 0 || payload.intervalHours > 8760) {
        return t("kbu.badInterval");
    }
    if (payload.source === "custom" && !/^https?:\/\/.+/i.test(payload.customUrl)) return t("kbu.badUrl");
    return "";
}

async function saveKbu(payload) {
    const s = state.kbu;
    s.token += 1;
    s.saving = true;
    renderKbu();
    try {
        const reply = await RequestApi.keyboxUpdateConfig(payload);
        if (!isOk(reply)) throw backendError("backend", String(reply));
    } finally {
        s.saving = false;
    }
    await loadKbu();
}

/* The switch only changes the switch: unsaved edits in the fields below stay unsaved. */
async function onKbuToggle() {
    const input = $("toggle-kbu");
    const want = input.checked;
    const saved = state.kbu.data;
    const payload = { enabled: want, source: saved.source, customUrl: saved.customUrl, intervalHours: saved.intervalHours };
    if (want) {
        const problem = kbuPayloadProblem(payload);
        if (problem) {
            input.checked = !want;
            showToast(problem, true);
            return;
        }
    }
    try {
        await saveKbu(payload);
        showToast(t(want ? "kbu.enabledToast" : "kbu.disabledToast"));
    } catch (err) {
        input.checked = !want;
        renderKbu();
        showToast(t("kbu.toggleFailed", { reason: errorText(err) }), true);
    }
}

async function onKbuSave() {
    const payload = kbuDraft();
    const problem = kbuPayloadProblem(payload);
    if (problem) {
        showToast(problem, true);
        return;
    }
    const button = $("btn-kbu-save");
    setBusy(button, "common.saving");
    try {
        await saveKbu(payload);
        showToast(t("kbu.savedToast"));
    } catch (err) {
        renderKbu();
        showToast(t("kbu.saveFailed", { reason: errorText(err) }), true);
    } finally {
        setBusy(button, null);
        renderKbu();
    }
}

async function onKbuNow() {
    const button = $("btn-kbu-now");
    setBusy(button, "kbu.updating");
    state.kbu.token += 1;
    try {
        const result = await RequestApi.keyboxUpdateNow();
        if (result.status) {
            state.kbu.status = "ready";
            state.kbu.data = result.status;
            state.kbu.err = null;
        }
        if (result.ok) {
            await Promise.all([loadKeyboxes(), loadVersionInfo()]);
            /* Shown longer, because the path is worth reading. */
            if (result.backup) showToast(t("kbu.updatedBackupToast", { path: result.backup }), true);
            else showToast(t("kbu.updatedToast"));
        } else {
            showToast(t("kbu.updateFailed", { reason: tokenText(result.reason) || result.reason || t("err.unknown") }), true);
        }
    } catch (err) {
        console.warn("[kbu]", err && err.message);
        showToast(t("kbu.updateFailed", { reason: errorText(err) }), true);
    } finally {
        setBusy(button, null);
        renderKbu();
    }
}

/* ------------------------------ Soter scope -------------------------------- */

/* Hundreds of apps stay smooth: the rows are built once and filtering only toggles a
   class. Selections that have not been saved survive a refresh. */
const ScopeCard = (() => {
    const s = {
        items: [], byPkg: new Map(), total: 0, selected: 0, visible: 0,
        defaultAll: false, filter: "", busy: false, loading: false, loaded: false,
        err: null, dirty: false, problem: { status: "loading", err: null },
    };
    let filterTimer = 0;
    let collator = null;

    const list = () => $("scope-list");

    function clear(el) {
        while (el.firstChild) el.removeChild(el.firstChild);
    }

    function compare(a, b) {
        const left = a.label || a.pkg;
        const right = b.label || b.pkg;
        const result = collator ? collator.compare(left, right) : (left < right ? -1 : (left > right ? 1 : 0));
        if (result !== 0) return result;
        return a.pkg < b.pkg ? -1 : (a.pkg > b.pkg ? 1 : 0);
    }

    function fallbackAvatar(item) {
        const span = document.createElement("span");
        span.className = "scope-avatar";
        span.textContent = (String(item.label || item.pkg).trim().charAt(0) || "?").toUpperCase();
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
            avatar.width = 36;
            avatar.height = 36;
            avatar.loading = "lazy";
            avatar.decoding = "async";
            avatar.src = "data:image/png;base64," + item.icon;
            avatar.addEventListener("error", () => {
                if (avatar.parentNode) avatar.parentNode.replaceChild(fallbackAvatar(item), avatar);
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
        meta.setAttribute("dir", "ltr");
        meta.textContent = item.pkg + " · uid " + item.uid;
        main.appendChild(name);
        main.appendChild(meta);

        const check = document.createElement("input");
        check.type = "checkbox";
        check.className = "scope-check";
        check.checked = item.selected;
        check.disabled = item.uid <= 0;
        check.setAttribute("aria-label", t("scope.checkAria", { app: item.label || item.pkg }));

        row.appendChild(avatar);
        row.appendChild(main);
        row.appendChild(check);
        item.el = row;
        item.cb = check;
        return row;
    }

    function renderSkeleton() {
        const frag = document.createDocumentFragment();
        for (let i = 0; i < 4; i += 1) {
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
        clear(list());
        list().appendChild(frag);
    }

    function renderRows() {
        const el = list();
        const scrollTop = el.scrollTop;
        const frag = document.createDocumentFragment();
        s.items.forEach((item) => { frag.appendChild(item.el || buildRow(item)); });
        clear(el);
        el.appendChild(frag);
        el.scrollTop = scrollTop;
    }

    function applyFilter() {
        const needle = s.filter.trim().toLowerCase();
        let visible = 0;
        s.items.forEach((item) => {
            const hit = !needle || item.haystack.indexOf(needle) >= 0;
            item.visible = hit;
            if (hit) visible += 1;
            if (item.el) item.el.classList.toggle("is-hidden", !hit);
        });
        s.visible = visible;
    }

    function render() {
        const empty = $("scope-empty");
        const filtering = s.filter.trim().length > 0;
        setText($("scope-count"), !s.loaded ? "" : t(filtering ? "scope.countFiltered" : "scope.count", {
            selected: s.selected, total: s.total, visible: s.visible,
        }));

        const blocked = s.busy || s.loading || !s.loaded;
        setEnabled($("scope-save"), !blocked && s.selected > 0);
        setEnabled($("scope-restore"), !blocked);
        $("scope-narrow").disabled = blocked || s.selected === 0;
        $("scope-select-all").disabled = blocked || s.visible === 0;
        $("scope-invert").disabled = blocked || s.visible === 0;
        $("scope-clear").disabled = blocked || s.selected === 0;
        $("scope-search").disabled = !s.loaded;
        list().classList.toggle("is-busy", s.busy);

        let message = "";
        if (s.loaded && s.total === 0) message = t("scope.emptyNone");
        else if (s.loaded && s.visible === 0) message = t("scope.emptyMatch");
        empty.textContent = message;
        empty.hidden = !message;

        const showAlert = s.loaded && s.defaultAll;
        $("scope-alert").hidden = !showAlert;
        if (showAlert) {
            $("scope-narrow").textContent = s.selected
                ? t("scope.narrowCount", { count: s.selected }) : t("scope.narrow");
        }

        const chip = $("scope-chip");
        if (s.err) setErrorChip(chip, s.err);
        else if (!s.loaded) setChip(chip, null, "");
        else if (s.defaultAll) setChip(chip, "on", t("scope.chipAll"));
        else setChip(chip, null, t("scope.chipNarrow"));
        s.problem.status = s.err ? "error" : (s.loaded ? "ready" : "loading");
        s.problem.err = s.err;
        problemBar($("scope-card"), [s.problem], () => { load(true).then(renderStatus); });
    }

    function renderText() {
        s.items.forEach((item) => {
            if (item.cb) item.cb.setAttribute("aria-label", t("scope.checkAria", { app: item.label || item.pkg }));
        });
        render();
    }

    function setSelected(item, on) {
        if (item.selected === on || item.uid <= 0) return;
        item.selected = on;
        s.selected += on ? 1 : -1;
        if (item.cb) item.cb.checked = on;
    }

    /* These act on the rows the current search shows. */
    function bulk(kind) {
        s.items.forEach((item) => {
            if (!item.visible) return;
            if (kind === "all") setSelected(item, true);
            else if (kind === "none") setSelected(item, false);
            else setSelected(item, !item.selected);
        });
        s.dirty = true;
        render();
    }

    function applyData(data) {
        if (data && data.ok === false) throw backendError("backend", data.error || data.detail || "");
        const packages = Array.isArray(data && data.packages) ? data.packages : [];
        const selectedUids = new Set((data && Array.isArray(data.selected) ? data.selected : []).map(Number));
        const defaultAll = !!(data && data.defaultAll);
        const pending = new Map();
        if (s.dirty) s.items.forEach((item) => pending.set(item.pkg, item.selected));

        s.defaultAll = defaultAll;
        s.items = packages.map((raw) => {
            const pkg = String((raw && raw.pkg) || "");
            const label = String((raw && raw.label) || pkg);
            const uid = Number(raw && raw.uid) || 0;
            return {
                pkg: pkg,
                uid: uid,
                label: label,
                icon: raw && typeof raw.icon === "string" ? raw.icon : "",
                haystack: (label + "\n" + pkg).toLowerCase(),
                selected: pending.has(pkg) ? pending.get(pkg) : (defaultAll ? true : selectedUids.has(uid)),
                visible: true,
                el: null,
                cb: null,
            };
        }).filter((item) => item.pkg.length > 0);
        collator = typeof Intl !== "undefined" && Intl.Collator
            ? new Intl.Collator(TEEI18N.locale(), { sensitivity: "base", numeric: true }) : null;
        s.items.sort(compare);
        s.byPkg = new Map(s.items.map((item) => [item.pkg, item]));
        s.total = s.items.length;
        s.selected = s.items.reduce((sum, item) => sum + (item.selected ? 1 : 0), 0);
        renderRows();
        applyFilter();
    }

    async function load(reprobe) {
        if (s.loading) return;
        if (reprobe) Backend.reset();
        s.loading = true;
        s.err = null;
        if (!s.loaded) renderSkeleton();
        render();
        try {
            applyData(await RequestApi.soterScope());
            s.loaded = true;
        } catch (err) {
            console.warn("[scope]", err && err.message);
            s.err = err;
            if (!s.dirty) {
                s.loaded = false;
                s.items = [];
                s.byPkg = new Map();
                s.total = 0;
                s.selected = 0;
                s.visible = 0;
                s.defaultAll = false;
                clear(list());
            }
        } finally {
            s.loading = false;
            render();
        }
    }

    async function save(all) {
        if (s.busy || s.loading || !s.loaded) return;
        /* Apps sharing one uid would otherwise send it twice. */
        const uids = [];
        s.items.forEach((item) => {
            if (item.selected && item.uid > 0 && uids.indexOf(item.uid) < 0) uids.push(item.uid);
        });
        if (!all && !uids.length) {
            showToast(t("scope.pickOne"), true);
            return;
        }
        s.busy = true;
        setBusy($("scope-save"), all ? "scope.restoring" : "common.saving");
        render();
        try {
            const reply = await RequestApi.soterScopeSet(all ? { all: true } : { uids: uids });
            if (!reply || reply.ok === false) {
                throw backendError("backend", (reply && (reply.error || reply.detail || reply.stderr)) || "");
            }
            const selectedCount = s.selected;
            s.dirty = false;
            await load(false);
            showToast(all ? t("scope.restored")
                : t("scope.saved", { count: typeof reply.count === "number" ? reply.count : selectedCount }));
        } catch (err) {
            console.warn("[scope]", err && err.message);
            showToast(t(all ? "scope.restoreFailed" : "scope.saveFailed", { reason: errorText(err) }), true);
        } finally {
            s.busy = false;
            setBusy($("scope-save"), null);
            render();
        }
    }

    function init() {
        $("scope-search").addEventListener("input", () => {
            if (filterTimer) clearTimeout(filterTimer);
            filterTimer = setTimeout(() => {
                s.filter = $("scope-search").value || "";
                applyFilter();
                render();
            }, 120);
        });
        list().addEventListener("change", (event) => {
            const check = event.target;
            if (!check || !check.classList || !check.classList.contains("scope-check")) return;
            const row = check.closest(".scope-row");
            const item = row ? s.byPkg.get(row.dataset.pkg) : null;
            if (!item) return;
            item.selected = !!check.checked;
            s.selected += item.selected ? 1 : -1;
            s.dirty = true;
            render();
        });
        $("scope-select-all").addEventListener("click", () => bulk("all"));
        $("scope-invert").addEventListener("click", () => bulk("invert"));
        $("scope-clear").addEventListener("click", () => bulk("none"));
        $("scope-save").addEventListener("click", () => save(false));
        $("scope-restore").addEventListener("click", () => save(true));
        $("scope-narrow").addEventListener("click", () => save(false));
    }

    return { init, load, renderText, problem: () => s.problem };
})();

/* --------------------------------- system ---------------------------------- */

async function loadSystem() {
    await Promise.all([loadHideBl(), loadAutoTarget()]);
}

async function loadHideBl() {
    await read(state.hideBl, async () => {
        requireSupport("get hide_bootloader");
        return String(await RequestApi.getHideBootloaderToggle()).trim() === "1";
    });
    renderSystem();
}

async function loadTargetCount() {
    const target = state.autoTarget;
    if (target.status !== "ready" || !target.data) {
        target.count = null;
    } else {
        try {
            target.count = await RequestApi.getTargetCount();
        } catch (err) {
            /* The switch state is still right without a count. */
            target.count = null;
        }
    }
    renderSystem();
}

async function loadAutoTarget() {
    await read(state.autoTarget, async () => {
        requireSupport("get auto_third_app");
        return String(await RequestApi.getAutoThirdAppToggle()).trim() === "1";
    });
    renderSystem();
    await loadTargetCount();
}

function renderSystem() {
    const hide = state.hideBl;
    const hideToggle = $("toggle-hide-bl");
    const hideSub = $("hide-bl-sub");
    if (hide.status === "ready") {
        hideToggle.checked = !!hide.data;
        hideToggle.disabled = hide.saving;
        hideSub.textContent = t("system.hideBlSub");
    } else {
        hideToggle.disabled = true;
        hideSub.textContent = hide.status === "error" ? DASH : t("common.loading");
    }

    const auto = state.autoTarget;
    const autoToggle = $("toggle-auto-target");
    const autoSub = $("target-sub");
    if (auto.status === "ready") {
        autoToggle.checked = !!auto.data;
        autoToggle.disabled = auto.saving;
        if (!auto.data) autoSub.textContent = t("system.autoSubOff");
        else if (auto.count === null) autoSub.textContent = t("system.autoSubOn");
        else autoSub.textContent = t("system.autoSubCount", { count: auto.count });
    } else {
        autoToggle.disabled = true;
        autoSub.textContent = auto.status === "error" ? DASH : t("common.loading");
    }
    problemBar($("system-card"), [hide, auto], () => { loadSystem().then(renderStatus); });
}

async function onHideBlToggle() {
    const saved = await writeSwitch($("toggle-hide-bl"), state.hideBl, RequestApi.setHideBootloaderToggle, "system.hideBlFailed");
    if (saved) showToast(t("system.hideBlSaved"));
    renderSystem();
}

async function onAutoTargetToggle() {
    const saved = await writeSwitch($("toggle-auto-target"), state.autoTarget, RequestApi.setAutoThirdAppToggle, "system.autoFailed");
    renderSystem();
    if (saved) {
        showToast(t("system.autoSaved"));
        await loadTargetCount();
    }
}

/* ------------------------------ security patch ----------------------------- */

async function loadPatch() {
    await read(state.patch, () => {
        requireSupport("get patch");
        return RequestApi.getSecurityPatch();
    });
    if (state.patch.status === "ready") {
        state.patch.mode = state.patch.data.mode === "fixed" ? "fixed" : "auto";
        if (state.patch.data.mode === "fixed" && state.patch.data.value && document.activeElement !== $("patch-date")) {
            $("patch-date").value = state.patch.data.value;
        }
    }
    renderPatch();
}

function prettyPatch(value) {
    if (!value) return t("common.unknown");
    if (value === "prop") return t("patch.modeAuto");
    return value;
}

function renderPatch() {
    const s = state.patch;
    const ready = s.status === "ready";
    const buttons = Array.prototype.slice.call($("patch-mode").querySelectorAll(".seg-btn"));
    buttons.forEach((button) => {
        button.classList.toggle("is-active", ready && button.dataset.mode === s.mode);
        button.setAttribute("aria-pressed", String(ready && button.dataset.mode === s.mode));
        button.disabled = !ready || s.saving;
    });
    $("patch-fixed-row").hidden = !(ready && s.mode === "fixed");
    $("patch-date").disabled = !ready || s.saving;
    setEnabled($("btn-apply-patch"), ready && !s.saving);
    setText($("patch-device"), ready ? prettyPatch(s.data.device) : "");
    setText($("patch-effective"), ready ? prettyPatch(s.data.effective) : "");
    problemBar($("patch-card"), [s], () => { loadPatch().then(renderStatus); });
}

async function applyPatch(value, doneKey) {
    const s = state.patch;
    s.token += 1;
    s.saving = true;
    renderPatch();
    try {
        const reply = await RequestApi.setSecurityPatch(value);
        if (!isOk(reply)) throw backendError("backend", String(reply));
        s.saving = false;
        await loadPatch();
        showToast(t(doneKey));
    } catch (err) {
        console.warn("[patch]", err && err.message);
        s.saving = false;
        /* What the switch shows has to go back to what is really stored. */
        if (s.data) s.mode = s.data.mode === "fixed" ? "fixed" : "auto";
        renderPatch();
        showToast(t("patch.saveFailed", { reason: errorText(err) }), true);
    }
}

function onPatchMode(mode) {
    const s = state.patch;
    if (s.status !== "ready" || s.saving || mode === s.mode) return;
    s.mode = mode;
    renderPatch();
    /* Fixed waits for a date and Apply; following the device needs nothing more. */
    if (mode === "auto") applyPatch("auto", "patch.autoToast");
}

async function onApplyPatch() {
    const value = ($("patch-date").value || "").trim();
    if (!/^\d{4}-\d{2}-\d{2}$/.test(value)) {
        showToast(t("patch.badDate"), true);
        return;
    }
    const button = $("btn-apply-patch");
    setBusy(button, "common.applying");
    await applyPatch(value, "patch.fixedToast");
    setBusy(button, null);
    renderPatch();
}

/* ------------------------------ compatibility ------------------------------ */

const COMPAT_MARKS = { ok: "✓", info: "i", warn: "!", error: "×" };
const COMPAT_ORDER = { error: 0, warn: 1, info: 2, ok: 3 };

function compatText(item) {
    const params = { a: item.a, b: item.b, c: item.c };
    let key = "compat.item." + item.key;
    if (item.key === "props_changed" && item.c && item.c !== "0") key = "compat.item.props_changed_added";
    if (item.key === "first_api") {
        params.who = item.a ? t("compat.whoModule", { name: item.a }) : t("compat.whoUnknown");
    }
    if (item.key === "pki_prop") params.c = item.c || t("compat.none");
    if (!TEEI18N.has(key)) return [item.key, item.a, item.b, item.c].filter(Boolean).join(" ");
    return t(key, params);
}

async function runCompat() {
    const s = state.compat;
    if (!Backend.isKsu() || Backend.supports("compat") === false) {
        s.hidden = true;
        renderCompat();
        return;
    }
    s.hidden = false;
    s.status = "running";
    s.token += 1;
    const token = s.token;
    setBusy($("compat-run"), "compat.running");
    renderCompat();
    try {
        const data = await RequestApi.compatCheck();
        if (token !== s.token) return;
        s.status = "ready";
        s.data = data;
        s.err = null;
    } catch (err) {
        if (token !== s.token) return;
        console.warn("[compat]", err && err.message);
        s.err = err;
        if (Backend.describe(err).level === "unsupported") s.hidden = true;
        s.status = "error";
    }
    setBusy($("compat-run"), null);
    renderCompat();
}

function renderCompat() {
    const s = state.compat;
    const card = $("compat-card");
    card.hidden = s.hidden;
    if (s.hidden) return;
    const listEl = $("compat-list");
    const items = s.data ? s.data.items.slice().sort((a, b) => COMPAT_ORDER[a.level] - COMPAT_ORDER[b.level]) : [];
    const errors = items.filter((item) => item.level === "error").length;
    const warnings = items.filter((item) => item.level === "warn").length;
    const needsAttention = errors + warnings;
    const shown = s.showAll ? items : items.filter((item) => item.level === "error" || item.level === "warn");

    while (listEl.firstChild) listEl.removeChild(listEl.firstChild);
    shown.forEach((item) => {
        const row = document.createElement("li");
        row.className = "check";
        const mark = document.createElement("span");
        mark.className = "check-mark";
        mark.setAttribute("data-level", item.level);
        mark.setAttribute("aria-hidden", "true");
        mark.textContent = COMPAT_MARKS[item.level];
        const text = document.createElement("span");
        text.className = "check-text";
        text.textContent = compatText(item);
        row.appendChild(mark);
        row.appendChild(text);
        listEl.appendChild(row);
    });

    const chip = $("compat-chip");
    const summary = $("compat-summary");
    if (!s.data) {
        setChip(chip, null, "");
        summary.hidden = true;
    } else {
        if (errors) setChip(chip, "err", t("compat.chipError", { count: errors }));
        else if (warnings) setChip(chip, "warn", t("compat.chipWarn", { count: warnings }));
        else setChip(chip, "ok", t("compat.chipOk"));
        summary.textContent = t("compat.allClear");
        summary.hidden = needsAttention > 0;
    }

    const toggle = $("compat-toggle");
    toggle.hidden = !s.data || items.length === needsAttention;
    toggle.textContent = s.showAll ? t("compat.showLess") : t("compat.showAll", { count: items.length });

    const time = $("compat-time");
    const stamp = s.data && s.data.time ? TEEI18N.date(s.data.time) : "";
    time.textContent = stamp ? t("compat.checkedAt", { time: stamp }) : "";
    time.hidden = !stamp;

    PanelBar.show(card, s.status === "error" && s.err
        ? { text: t("compat.failed", { reason: errorText(s.err) }) } : null);
}

/* ---------------------------- backend-only panels --------------------------- */

async function loadDiagnostics() {
    if (!Backend.isKsu()) {
        state.debug.status = "idle";
        renderDiagnostics();
        return;
    }
    await read(state.debug, () => {
        requireSupport("get debug");
        return RequestApi.getDebug();
    });
    renderDiagnostics();
}

function renderDiagnostics() {
    const s = state.debug;
    const toggle = $("toggle-debug");
    const button = $("btn-export-logs");
    const sub = $("diag-sub");
    const hint = $("diag-hint");
    const ksu = Backend.isKsu();
    if (!ksu) {
        toggle.disabled = true;
        button.disabled = true;
        sub.textContent = t("diag.ksuOnly");
    } else if (s.status === "ready") {
        toggle.checked = !!s.data;
        toggle.disabled = s.saving;
        setEnabled(button, true);
        sub.textContent = t(s.data ? "diag.on" : "diag.off");
    } else {
        toggle.disabled = true;
        setEnabled(button, s.status === "error");
        sub.textContent = s.status === "error" ? DASH : t("common.loading");
    }
    const result = s.result;
    const line = $("diag-result");
    line.hidden = !result;
    if (result) {
        line.textContent = result.path ? t("diag.exported", { path: result.path }) : t("diag.exportedNoPath");
        hint.textContent = result.path ? t("diag.size", { count: result.bytes }) : t("diag.hint");
    } else {
        hint.textContent = t("diag.hint");
    }
    $("btn-copy-path").hidden = !(result && result.path);
    problemBar($("diag-card"), [s], () => { loadDiagnostics().then(renderStatus); });
}

async function onDebugToggle() {
    const input = $("toggle-debug");
    const want = input.checked;
    const saved = await writeSwitch(input, state.debug, RequestApi.setDebug, "diag.saveFailed");
    if (saved) showToast(t(want ? "diag.toastOn" : "diag.toastOff"));
    renderDiagnostics();
}

async function onExportLogs() {
    const button = $("btn-export-logs");
    setBusy(button, "diag.exporting");
    try {
        state.debug.result = await RequestApi.exportLogs();
        showToast(t("diag.toastExported"));
    } catch (err) {
        console.warn("[logs]", err && err.message);
        showToast(t("diag.exportFailed", { reason: errorText(err) }), true);
    } finally {
        setBusy(button, null);
        renderDiagnostics();
    }
}

/* navigator.clipboard only exists on secure origins and is often refused inside an
   iframe, so fall back to the older selection-based copy. */
async function copyText(text) {
    if (navigator.clipboard && navigator.clipboard.writeText) {
        try {
            await navigator.clipboard.writeText(text);
            return true;
        } catch (err) {
            /* Fall through to the older way. */
        }
    }
    const area = document.createElement("textarea");
    area.value = text;
    area.setAttribute("readonly", "");
    area.style.position = "fixed";
    area.style.opacity = "0";
    document.body.appendChild(area);
    area.select();
    let copied = false;
    try {
        copied = document.execCommand("copy");
    } catch (err) {
        copied = false;
    }
    document.body.removeChild(area);
    return copied;
}

async function onCopyPath() {
    const result = state.debug.result;
    if (!result || !result.path) return;
    const copied = await copyText(result.path);
    showToast(t(copied ? "diag.copied" : "diag.copyFailed"), !copied);
}

async function loadTakeover() {
    if (!Backend.isKsu()) {
        state.takeover.status = "idle";
        renderTakeover();
        return;
    }
    await read(state.takeover, () => {
        requireSupport("get key_takeover");
        return RequestApi.getKeyTakeover();
    });
    renderTakeover();
}

function renderTakeover() {
    const s = state.takeover;
    const toggle = $("toggle-key-takeover");
    const sub = $("takeover-sub");
    if (!Backend.isKsu()) {
        toggle.disabled = true;
        sub.textContent = t("diag.ksuOnly");
    } else if (s.status === "ready") {
        toggle.checked = !!s.data;
        toggle.disabled = s.saving;
        sub.textContent = t(s.data ? "exp.takeoverOn" : "exp.takeoverOff");
    } else {
        toggle.disabled = true;
        sub.textContent = s.status === "error" ? DASH : t("common.loading");
    }
    problemBar($("takeover-card"), [s], () => { loadTakeover().then(renderStatus); });
}

async function onTakeoverToggle() {
    const input = $("toggle-key-takeover");
    const want = input.checked;
    const saved = await writeSwitch(input, state.takeover, RequestApi.setKeyTakeover, "exp.saveFailed");
    if (saved) showToast(t(want ? "exp.toastOn" : "exp.toastOff"));
    renderTakeover();
}

/* ------------------------------- appearance -------------------------------- */

const Appearance = (() => {
    const THEMES = ["spring", "summer", "autumn", "winter"];
    const SCHEMES = ["auto", "light", "dark"];
    const THEME_KEY = "maplesu-tee-theme";
    const SCHEME_KEY = "maplesu-tee-scheme";
    let theme = "autumn";
    let scheme = "auto";
    let darkQuery = null;

    function remember(key, value) {
        try { localStorage.setItem(key, value); } catch (e) { /* It then lasts for this page only. */ }
    }

    function recall(key) {
        try { return localStorage.getItem(key); } catch (e) { return null; }
    }

    function apply() {
        const root = document.documentElement;
        const host = window.MapleSUAppearance || null;
        const hostScheme = host && (host.scheme === "light" || host.scheme === "dark" || host.scheme === "auto") ? host.scheme : "";
        const hostColors = host && host.colors && Object.keys(host.colors).length ? host.colors : null;
        const chosen = hostScheme || scheme;
        root.setAttribute("data-theme", theme);
        root.setAttribute("data-scheme", chosen === "auto" ? (darkQuery && darkQuery.matches ? "dark" : "light") : chosen);
        if (hostColors) window.teeHostColors(hostColors);
        root.classList.toggle("no-motion", !!(host && host.motion === false));

        $("settings-hosted").hidden = !(hostScheme || hostColors);
        Array.prototype.forEach.call($("season-choice").querySelectorAll(".season"), (button) => {
            const active = button.dataset.value === theme;
            button.classList.toggle("is-active", active);
            button.setAttribute("aria-pressed", String(active));
            button.disabled = !!hostColors;
        });
        Array.prototype.forEach.call($("scheme-choice").querySelectorAll(".seg-btn"), (button) => {
            const active = button.dataset.value === chosen;
            button.classList.toggle("is-active", active);
            button.setAttribute("aria-pressed", String(active));
            button.disabled = !!hostScheme;
        });
    }

    function renderLanguages() {
        const select = $("language-select");
        while (select.firstChild) select.removeChild(select.firstChild);
        const add = (value, label) => {
            const option = document.createElement("option");
            option.value = value;
            option.textContent = label;
            select.appendChild(option);
        };
        add(TEEI18N.AUTO, t("settings.followSystem"));
        TEEI18N.available().forEach((item) => add(item.tag, item.name));
        select.value = TEEI18N.preference();
    }

    function init() {
        const savedTheme = recall(THEME_KEY);
        const savedScheme = recall(SCHEME_KEY);
        if (THEMES.indexOf(savedTheme) >= 0) theme = savedTheme;
        if (SCHEMES.indexOf(savedScheme) >= 0) scheme = savedScheme;
        darkQuery = window.matchMedia ? window.matchMedia("(prefers-color-scheme: dark)") : null;

        Array.prototype.forEach.call($("season-choice").querySelectorAll(".season"), (button) => {
            button.addEventListener("click", () => {
                theme = button.dataset.value;
                remember(THEME_KEY, theme);
                apply();
            });
        });
        Array.prototype.forEach.call($("scheme-choice").querySelectorAll(".seg-btn"), (button) => {
            button.addEventListener("click", () => {
                scheme = button.dataset.value;
                remember(SCHEME_KEY, scheme);
                apply();
            });
        });
        $("language-select").addEventListener("change", (event) => TEEI18N.setLocale(event.target.value));

        const dialog = $("settings-dialog");
        $("btn-settings").addEventListener("click", () => {
            if (dialog.showModal) dialog.showModal();
            else dialog.setAttribute("open", "");
        });
        $("btn-settings-done").addEventListener("click", () => {
            if (dialog.close) dialog.close();
            else dialog.removeAttribute("open");
        });
        dialog.addEventListener("click", (event) => {
            if (event.target !== dialog) return;
            const box = dialog.getBoundingClientRect();
            if (event.clientX < box.left || event.clientX > box.right || event.clientY < box.top || event.clientY > box.bottom) {
                dialog.close();
            }
        });

        if (darkQuery) {
            if (darkQuery.addEventListener) darkQuery.addEventListener("change", apply);
            else if (darkQuery.addListener) darkQuery.addListener(apply);
        }
        window.addEventListener("maplesuappearancechange", apply);
        apply();
        renderLanguages();
    }

    return { init, renderLanguages };
})();

/* ------------------------------- page start -------------------------------- */

function renderAll() {
    document.querySelectorAll("[data-busy-key]").forEach((button) => {
        button.textContent = t(button.dataset.busyKey);
    });
    renderBackend();
    renderInfo();
    renderSoter();
    renderKeybox();
    renderKbu();
    ScopeCard.renderText();
    renderSystem();
    renderPatch();
    renderCompat();
    renderDiagnostics();
    renderTakeover();
    renderStatus();
    Appearance.renderLanguages();
}

async function refreshPage() {
    if (pageLoading) return;
    pageLoading = true;
    /* Looks for the module again, so installing or removing one needs no page reload. */
    Backend.reset();
    const reload = $("btn-reload");
    reload.disabled = true;
    renderBackend();
    renderStatus();
    /* The app list can take a while, so it does not hold up the other cards. */
    const scope = ScopeCard.load();
    try {
        /* First, because it tells the rest what this backend supports. */
        await loadVersionInfo();
        await Promise.all([loadKbu(), loadSoterCard(), loadKeyboxes(), loadSystem(), loadPatch(),
            loadDiagnostics(), loadTakeover()]);
    } finally {
        pageLoading = false;
        reload.disabled = false;
        renderStatus();
    }
    /* Runs once per page, since it has its own button. Waiting for the app list as well
       would make this card appear late and push the page down under the user's finger. */
    if (state.compat.status === "idle") runCompat();
    await scope;
    renderStatus();
}

function bind() {
    $("btn-reload").addEventListener("click", refreshPage);
    $("toggle-soter").addEventListener("change", onSoterToggle);
    $("toggle-soter-certs").addEventListener("change", onCertsToggle);
    $("keybox-select").addEventListener("change", (event) => { state.keybox.pick = event.target.value; });
    $("btn-apply-keybox").addEventListener("click", onApplyKeybox);
    $("toggle-kbu").addEventListener("change", onKbuToggle);
    $("btn-kbu-save").addEventListener("click", onKbuSave);
    $("btn-kbu-now").addEventListener("click", onKbuNow);
    $("kbu-source").addEventListener("change", () => {
        $("kbu-custom-row").hidden = $("kbu-source").value !== "custom";
    });
    $("toggle-hide-bl").addEventListener("change", onHideBlToggle);
    $("toggle-auto-target").addEventListener("change", onAutoTargetToggle);
    Array.prototype.forEach.call($("patch-mode").querySelectorAll(".seg-btn"), (button) => {
        button.addEventListener("click", () => onPatchMode(button.dataset.mode));
    });
    $("btn-apply-patch").addEventListener("click", onApplyPatch);
    $("compat-run").addEventListener("click", runCompat);
    $("compat-toggle").addEventListener("click", () => {
        state.compat.showAll = !state.compat.showAll;
        renderCompat();
    });
    $("toggle-debug").addEventListener("change", onDebugToggle);
    $("btn-export-logs").addEventListener("click", onExportLogs);
    $("btn-copy-path").addEventListener("click", onCopyPath);
    $("toggle-key-takeover").addEventListener("change", onTakeoverToggle);
    ScopeCard.init();
    TEEI18N.onChange(renderAll);
}

async function start() {
    TEEI18N.start();
    Appearance.init();
    bind();
    renderAll();
    document.documentElement.classList.remove("booting");
    await refreshPage();
    startKeyboxPoll();
}

document.addEventListener("DOMContentLoaded", start);
