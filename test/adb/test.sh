#!/usr/bin/env bash
set -e

# Helper của Dev Containers test framework
source dev-container-features-test-lib

# --- ADB checks ---
check "adb on PATH" bash -lc "command -v adb"
check "adb version prints" bash -lc "adb version | grep -i 'Android Debug Bridge'"
check "adb start/kill server" bash -lc "adb start-server && adb kill-server"

# --- Fastboot checks ---
check "fastboot on PATH" bash -lc "command -v fastboot"
check "fastboot version prints" bash -lc "fastboot --version | grep -i 'fastboot'"
# Lấy help (không cần thiết bị)
check "fastboot help runs" bash -lc "fastboot --help >/dev/null 2>&1"

reportResults
