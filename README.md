# omarchy-cursor-style-submenu

Adds a **Cursor** row under **Style** in the Omarchy menu. Picking a theme switches the pointer immediately and keeps that choice across login. Size is left alone.

Cursor artwork is not in this repo. Install the themes yourself; a row is hidden until its folder is present.

## Install

```bash
git clone https://github.com/RubenM0/omarchy-cursor-style-submenu.git
cd omarchy-cursor-style-submenu
./install.sh
```

The installer copies `omarchy-cursor-set` to `~/.local/bin` and merges the menu into `~/.config/omarchy/extensions/omarchy-menu.jsonc`. It will not overwrite a `style.cursor` entry that is already there.

## Themes this menu knows

Put each theme in `~/.local/share/icons/<name>/` (or `~/.icons/<name>/`). The folder name is the theme name.

- [Retrosmart Xcursor](https://www.gnome-look.org/p/2366625) — Linux archives `retrosmart-cursor-classic` and `retrosmart-cursor-extras`. Folders are `retrosmart-xcursor-*`.
- [Kasane Teto [Winged] Cursor](https://www.gnome-look.org/p/2347588) — folder `tetoW`.
- [Korkhon 2.0](https://www.gnome-look.org/p/2374211) — folder `Korkhon 2.0`.

Menu layout: Teto, Korkhon, then Retrosmart Win-ish, Mac-ish, Cur-font, and Win 3D.

## Switch from a terminal

```bash
omarchy-cursor-set tetoW
omarchy-cursor-current
```
