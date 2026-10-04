# omarchy-cursor-style-submenu

Adds a **Cursor** row under **Style** in the Omarchy menu. Picking a cursor theme switches the cursor. **Omarchy default** restores the default Adwaita and the 24 size. **Size** allows for 8, 16, 32, 64, and 128 cursor sizing.

## Install

```bash
git clone https://github.com/RubenM0/omarchy-cursor-style-submenu.git
cd omarchy-cursor-style-submenu
./install.sh
```

The installer copies `omarchy-cursor-set` to `~/.local/bin` and merges the menu into `~/.config/omarchy/extensions/omarchy-menu.jsonc`. Re-running it adds missing rows and does not replace entries that are already there.

## Themes setup

Put each theme in `~/.local/share/icons/` (or `~/.icons/`). The folder name is the theme name.

## A personal favourite cursor

- [Korkhon 2.0](https://www.gnome-look.org/p/2374211) — folder `Korkhon 2.0`.

## Switch from a terminal

```bash
omarchy-cursor-set tetoW
omarchy-cursor-set --default
omarchy-cursor-set --size 32
omarchy-cursor-current
omarchy-cursor-size
```
