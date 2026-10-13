# omarchy-cursor-style-submenu

A personal problem with Omarchy's customisation is the lack of cursor customisation. This adds a Cursor row under Style in the Omarchy menu. Picking a cursor theme switches the cursor (who would've guessed). Omarchy default restores the default Adwaita and the 24 size. Size lets you change the cursor size.

## Install

```bash
git clone https://github.com/RubenM0/omarchy-cursor-style-submenu.git
cd omarchy-cursor-style-submenu
./install.sh
```

## IMPORTANT THEMES SETUP

Put each theme in `~/.local/share/icons/` (or `~/.icons/`). The folder name is the theme name.

## A personal favourite cursor to get started

- [Korkhon 2.0](https://www.gnome-look.org/p/2374211)

## Switch from a terminal

```bash
omarchy-cursor-set tetoW
omarchy-cursor-set --default
omarchy-cursor-set --size 32
omarchy-cursor-current
omarchy-cursor-size
```
