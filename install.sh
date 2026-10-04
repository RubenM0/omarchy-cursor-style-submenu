#!/bin/bash
# Install the cursor switcher and merge the Style > Cursor menu.

set -euo pipefail

ROOT=$(cd "$(dirname "$0")" && pwd)
BIN_DIR="${HOME}/.local/bin"
MENU="${XDG_CONFIG_HOME:-$HOME/.config}/omarchy/extensions/omarchy-menu.jsonc"

install -d "$BIN_DIR"
install -m 0755 "$ROOT/bin/omarchy-cursor-set" "$BIN_DIR/omarchy-cursor-set"
ln -sfn omarchy-cursor-set "$BIN_DIR/omarchy-cursor-current"

install -d "$(dirname "$MENU")"
if [[ ! -f $MENU ]]; then
  printf '{\n}\n' > "$MENU"
fi

python3 - "$MENU" "$ROOT/menu-entries.jsonc" << 'PY'
import sys
menu_path, fragment_path = sys.argv[1:]
text = open(menu_path).read()
if '"style.cursor"' in text:
    print("menu already has style.cursor; left it unchanged")
    raise SystemExit(0)
fragment = open(fragment_path).read().strip("\n")
idx = text.rfind("}")
if idx < 0:
    raise SystemExit(f"no closing brace in {menu_path}")
head = text[:idx].rstrip()
if not head.endswith("{") and not head.endswith(","):
    head += ","
open(menu_path, "w").write(head + "\n" + fragment + "\n" + text[idx:])
print(f"merged cursor menu into {menu_path}")
PY

if command -v omarchy >/dev/null 2>&1; then
  omarchy menu refresh >/dev/null 2>&1 || true
fi

echo "Installed omarchy-cursor-set. Open Style → Cursor."
