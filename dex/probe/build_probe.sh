#!/usr/bin/env bash
# Build the on-device verifier probe for the p16p lane.
#   probe/stub*  compile-time only (never dexed): the real mpl/* classes come from the
#                product dex, which is put *after* the probe dex on the classpath.
set -eu
cd "$(dirname "$0")/.."
AJ='D:\Maple_Env\Android\Sdk\platforms\android-35\android.jar'
D8='D:\Maple_Env\Android\Sdk\build-tools\37.0.0\d8.bat'
JAVAC='C:\Program Files\Microsoft\jdk-21.0.12.101-hotspot\bin\javac.exe'

rm -rf probe/stubc probe/classes
mkdir -p probe/stubc probe/classes probe/out

echo "== stubs =="
"$JAVAC" -source 8 -target 8 -nowarn -encoding UTF-8 -cp "$AJ" -d probe/stubc \
    $(find src/stubs -name '*.java') probe/stub/mpl/*.java

echo "== probe =="
"$JAVAC" -source 8 -target 8 -nowarn -encoding UTF-8 -cp "$AJ;probe/stubc" \
    -d probe/classes probe/src/mpl/*.java

echo "== d8 =="
cmd //c "$D8" --release --min-api 21 --lib "$AJ" --output probe/out probe/classes/mpl/*.class

ls -l probe/out/classes.dex
sha256sum probe/out/classes.dex
