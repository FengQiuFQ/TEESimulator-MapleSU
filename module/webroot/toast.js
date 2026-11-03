/* ==========================================================================
   Toast：居中、暗色卡片 + 红色描边，与 MapleSU 暗色主题一致
   ========================================================================== */

let toastTimer = null;

function showToast(message) {
    const toast = document.getElementById("toast");
    if (!toast) return;

    toast.textContent = message;
    toast.classList.add("show");

    if (toastTimer) clearTimeout(toastTimer);

    toastTimer = setTimeout(() => {
        toast.classList.remove("show");
    }, 2000);
}
