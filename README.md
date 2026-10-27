# omarchy-cursor-style-submenu

A personal problem with Omarchy's customisation is the lack of cursor customisation. This adds a Cursor row under Style in the Omarchy menu. Picking a cursor theme switches the cursor (who would've guessed). Omarchy default restores the default Adwaita and the 24 size. Size lets you change the cursor size.

## Install

```bash
git clone https://github.com/RubenM0/omarchy-cursor-style-submenu.git
cd omarchy-cursor-style-submenu
./install.sh
```

## Themes

Put each theme in `~/.local/share/icons/` (or `~/.icons/`). Themes already in `/usr/share/icons/` are included too. The folder name is the theme name.

`./install.sh` rebuilds Style → Cursor from those folders. Run it again after adding or removing a theme. Retrosmart packs stay grouped under Win-ish, Mac-ish, Cur-font, and Win 3D. Anything else is listed on the Cursor menu. The menu cannot rescan by itself.

## A personal favourite cursor to get started

- [Korkhon 2.0](https://www.gnome-look.org/p/2374211)

Switching also writes the GTK cursor settings and `~/.icons/default`, so XWayland and GTK apps follow the same theme and size. An app that is already open may keep the old cursor until it is restarted.

## Switch from a terminal

```bash
omarchy-cursor-set tetoW
omarchy-cursor-set --default
omarchy-cursor-set --size 32
omarchy-cursor-current
omarchy-cursor-size
```
