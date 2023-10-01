# Dotfiles

![qtile](./screenshots/qtile.png)
![rofi](./screenshots/rofi.png)

- **OS** - ArcoLinux
- **Window Manager** - qtile
- **Compositor** - picom
- **Shell** - fish
- **Terminal** - alacritty
- **Editor** - nvim / vscode
- **Browser** - firefox
- **App launcher** - rofi
- **Theme** - Tokyo Night / Catppuccin Macchiato

## Qtile Installation (Arch Based)

### Requirements

Nerd fonts:
- UbuntuMono Nerd Font
- Hack Nerd Font
- Mononoki Nerd Font

Dependencies:

```bash
sudo pacman -S --needed git qtile pacman-contrib python python-pip python-psutil
```

### Installation

Clone the repository and copy my configs:

```bash
git clone https://github.com/sanfex/dotfiles.git ~/
cp -r ~/dotfiles/.config/qtile ~/.config
```

To change the theme check which ones are available in the `themes` folder and edit the `config.json` file with the name of the theme you want:

```json
{"theme": "material-ocean"}
```

If you want to autostart programs when qtile starts, edit the `autostart.sh` file and add the programs you want:

```bash
#!/bin/sh

volumeicon &
```

To add/modify shortcuts you need to edit `settings/keys.py`, mod key is super key (windows key), to add a new shortcut you just need to add a new line as follows:

```python
([mod], "b", lazy.spawn("firefox")),
```

It means that `super + b` will open `firefox`, you have to put the name of the program inside `lazy.spawn()`.

You can also use a 3 keys combination, for example:

```python
([mod, "shift"], "f", lazy.window.toggle_floating()),
```

When you press `super + shift + f` it will toggle the focused window between floating mode and tiling mode.

Finally, to modify workspaces, edit ```settings/groups.py```. If you want to add more layouts, check ```settings/layouts.py```. And if you want to modify the widgets, go to `settings/widgets.py`.

## Theming

To change the theme of your system, you first need to install the necessary packages:

```bash
sudo pacman -S lxappearance kvantum-qt5 gtk-engine-murrine papirus-icon-theme arc-gtk-theme arc-icon-theme
```

To use kvantum in your qt apps you have to edit `~/.xprofile` and add the following line:

```bash
export QT_STYLE_OVERRIDE=kvantum
```

You can now open lxapperance and kvantum, select a theme and you're good to go, but I'll show you how to install a custom theme.

To install a custom GTK theme you'll have to find one, gnome-look is a good place to find themes, after you've downloaded and extracted your theme you'll have a folder with the name of your theme, move that folder to `/usr/share/themes`:

```bash
sudo mv theme_folder_name /usr/share/themes
```

Installing a custom icon set is almost the same as with the GTK theme, find the icon set you want, download and extract it and move the folder to `/usr/share/icons`:

```bash
sudo mv icons_folder_name /usr/share/icons
```

To install custom cursor themes you also have to move the cursor's folder to `/usr/share/icons`:

```bash
sudo mv cursor_folder_name /usr/share/icons
```

You can open lxappearance and select your custom GTK theme, icon theme and cursor theme.

To install a custom kvantum theme you'll need to find, download and extract the theme as always, open kvantum manager, select the custom theme folder and click `install this theme`, after that go to `change/delete theme`, select the newly added theme and finally click `use this theme`.