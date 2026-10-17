#!/bin/bash
# Install the cursor switcher and merge the Style > Cursor menu.

set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
BIN_DIR="${HOME}/.local/bin"
MENU="${XDG_CONFIG_HOME:-$HOME/.config}/omarchy/extensions/omarchy-menu.jsonc"

install -d "$BIN_DIR"
install -m 0755 "$ROOT/bin/omarchy-cursor-set" "$BIN_DIR/omarchy-cursor-set"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-current"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-size"

install -d "$(dirname "$MENU")"
if [[ ! -f $MENU ]]; then
  printf '{\n}\n' > "$MENU"
fi

python3 - "$MENU" "$ROOT/menu-entries.jsonc" << 'PY'
import sys
menu_path, fragment_path = sys.argv[1:]
text = open(menu_path).read()
fragment = open(fragment_path).read().strip("\n")

def is_cursor_row(line):
    stripped = line.lstrip()
    return stripped.startswith('"style.cursor":') or stripped.startswith('"style.cursor.')

kept = [line for line in text.splitlines() if not is_cursor_row(line)]
body = "\n".join(kept).rstrip()
idx = body.rfind("}")
if idx < 0:
    raise SystemExit(f"no closing brace in {menu_path}")
head = body[:idx].rstrip()
if not head.endswith("{") and not head.endswith(","):
    head += ","
open(menu_path, "w").write(head + "\n" + fragment + "\n" + body[idx:])
print(f"refreshed cursor menu in {menu_path}")
PY

if command -v omarchy >/dev/null 2>&1; then
  omarchy menu refresh >/dev/null 2>&1 || true
fi

echo "Installed omarchy-cursor-set. Open Style → Cursor."
