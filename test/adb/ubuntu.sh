#!/bin/sh
set -e
# Gọi lại bài test chung
DIR="$(CDPATH= cd -- "$(dirname "$0")" && pwd)"
sh "$DIR/test.sh"
