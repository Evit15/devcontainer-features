#!/bin/sh
set -e

fail=0
check() {
  name="$1"; shift
  if sh -lc "$*"; then
    echo "✅ $name"
  else
    echo "❌ $name"
    fail=$((fail+1))
  fi
}

# --- ADB ---
check "adb on PATH" "command -v adb"
check "adb version prints" "adb version | grep -i 'Android Debug Bridge'"
check "adb start/kill server" "adb start-server && adb kill-server"

# --- Fastboot ---
check "fastboot on PATH" "command -v fastboot"
check "fastboot version prints" "fastboot --version | grep -i 'fastboot'"
check "fastboot help runs" "fastboot --help >/dev/null 2>&1"

# Tổng kết
[ "$fail" -eq 0 ] || exit 1
