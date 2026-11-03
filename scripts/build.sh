#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT/dex"
python3 make_p16.py a b d e f g s s4 m p
cd "$ROOT"
MAPLESU_TEE_DEX=dex/classes_p16.dex python3 tools/package_teesimulator_bundle.py
sha256sum dist/*.zip
