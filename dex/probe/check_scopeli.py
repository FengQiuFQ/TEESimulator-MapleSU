"""Validate the on-device `mpl.ScopeCli list` output (single-line JSON)."""
import base64
import json
import sys

path = sys.argv[1]
raw = open(path, "rb").read()
text = raw.decode("utf-8").strip()
doc = json.loads(text)

print("bytes        :", len(raw))
print("ok           :", doc.get("ok"))
print("defaultAll   :", doc.get("defaultAll"))
print("selected     :", doc.get("selected"))
pkgs = doc.get("packages") or []
print("packages     :", len(pkgs))
print("keys         :", sorted(pkgs[0].keys()) if pkgs else None)

labels = [p.get("label", "") for p in pkgs]
print("sortedByLabel:", labels == sorted(labels, key=str.caseinsensitive_key if False else None)
      if False else labels == sorted(labels, key=lambda s: s.lower()))

with_icon = 0
bad = []
sizes = []
for p in pkgs:
    icon = p.get("icon") or ""
    if not icon:
        bad.append(p.get("pkg"))
        continue
    try:
        blob = base64.b64decode(icon)
    except Exception as exc:  # noqa: BLE001
        bad.append("%s(b64:%s)" % (p.get("pkg"), exc))
        continue
    if not blob.startswith(b"\x89PNG\r\n\x1a\n"):
        bad.append("%s(not png)" % p.get("pkg"))
        continue
    width = int.from_bytes(blob[16:20], "big")
    height = int.from_bytes(blob[20:24], "big")
    if (width, height) != (96, 96):
        bad.append("%s(%dx%d)" % (p.get("pkg"), width, height))
        continue
    with_icon += 1
    sizes.append(len(blob))

print("iconsOk      :", with_icon, "/", len(pkgs))
if sizes:
    print("iconBytes    : min=%d max=%d" % (min(sizes), max(sizes)))
print("iconProblems :", bad[:5], "(total %d)" % len(bad))
print("uids         : positive=%d sample=%s"
      % (sum(1 for p in pkgs if p.get("uid", -1) > 0), [p.get("uid") for p in pkgs[:5]]))
print("first3       :")
for p in pkgs[:3]:
    print("   pkg=%-42s uid=%-6s label=%-22s iconLen=%d"
          % (p.get("pkg"), p.get("uid"), p.get("label"), len(p.get("icon") or "")))
