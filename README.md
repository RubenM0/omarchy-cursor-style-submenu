# omarchy-cursor-style-submenu

Adds a **Cursor** row under **Style** in the Omarchy menu. Picking a theme switches the pointer immediately and keeps that choice across login. **Omarchy default** is the first item and restores Adwaita at size 24. **Size** is next and offers 8, 16, 32, 64, and 128. Choosing a theme after a reset applies that theme again.

Cursor artwork is not in this repo. Install the themes yourself; a row is hidden until its folder is present.

## Install

```bash
git clone https://github.com/RubenM0/omarchy-cursor-style-submenu.git
cd omarchy-cursor-style-submenu
./install.sh
```

The installer copies `omarchy-cursor-set` to `~/.local/bin` and merges the menu into `~/.config/omarchy/extensions/omarchy-menu.jsonc`. Re-running it adds missing rows and does not replace entries that are already there.

## Themes this menu knows

Put each theme in `~/.local/share/icons/<name>/` (or `~/.icons/<name>/`). The folder name is the theme name.

- [Retrosmart Xcursor](https://www.gnome-look.org/p/2366625) — Linux archives `retrosmart-cursor-classic` and `retrosmart-cursor-extras`. Folders are `retrosmart-xcursor-*`.
- [Kasane Teto [Winged] Cursor](https://www.gnome-look.org/p/2347588) — folder `tetoW`.
- [Korkhon 2.0](https://www.gnome-look.org/p/2374211) — folder `Korkhon 2.0`.

Menu layout: Omarchy default, Size, then Teto, Korkhon, and Retrosmart Win-ish, Mac-ish, Cur-font, and Win 3D.

## Switch from a terminal

```bash
omarchy-cursor-set tetoW
omarchy-cursor-set --default
omarchy-cursor-set --size 32
omarchy-cursor-current
omarchy-cursor-size
```
