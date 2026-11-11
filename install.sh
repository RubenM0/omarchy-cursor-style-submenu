#!/bin/bash
# Install the cursor switcher and reload Style > Cursor from installed themes.

set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
BIN_DIR="${HOME}/.local/bin"

install -d "$BIN_DIR"
install -m 0755 "$ROOT/bin/omarchy-cursor-set" "$BIN_DIR/omarchy-cursor-set"
install -m 0755 "$ROOT/bin/omarchy-cursor-menu" "$BIN_DIR/omarchy-cursor-menu"
install -m 0755 "$ROOT/bin/cursor-menu" "$BIN_DIR/cursor-menu"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-current"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-size"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-speed"

"$BIN_DIR/cursor-menu" reload

echo "Installed. Open Style → Cursor. After adding or removing a theme, run cursor-menu reload."
