# Mac.config

This repository manages configuration files for Mac.

## Structure
This repository organizes configuration files with the following directory structure:

```
./
├── alacritty
│   └── themes
│       ├── images
│       └── themes
├── btop
│   └── themes
├── coc
│   └── extensions
├── github-copilot
├── htop
├── karabiner
│   ├── assets
│   │   └── complex_modifications
│   └── automatic_backups
├── neofetch
├── nvim
│   ├── lua
│   └── plugin
├── ranger
├── skhd
└── yabai
```

## Directory Description
- `alacritty/` - Configuration for Alacritty terminal emulator
- `btop/` - Theme settings for btop resource monitor
- `coc/` - Extensions for CoC (Conquer of Completion) in Neovim
- `github-copilot/` - GitHub Copilot settings
- `htop/` - Configuration for htop
- `karabiner/` - Configuration for Karabiner-Elements
- `neofetch/` - Configuration for Neofetch
- `nvim/` - Configuration files for Neovim (Lua, plugins, etc.)
- `ranger/` - Configuration for Ranger file manager
- `skhd/` - Configuration for skhd keyboard shortcut manager
- `yabai/` - Configuration for Yabai tiling window manager

## Installation
To apply these configurations, create symbolic links in your home directory under `~/.config/`:

```sh
cd ~
git clone https://github.com/yourusername/Mac.config.git
ln -s ~/Mac.config/* ~/.config/
```

## Notes
- If you modify any configuration files, update the repository accordingly.
- After applying settings, run commands like `yabai --restart-service && sudo yabai --load-sa` or `skhd --restart-service` to apply changes.

## License
MIT License