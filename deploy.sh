#!/usr/bin/env bash

# alacritty
install -Dm644 -o hong -g hong /usr/share/dotconfig/alacritty/alacritty.toml /home/hong/.config/alacritty/alacritty.toml
install -Dm644 -o hong -g hong /usr/share/dotconfig/alacritty/gruvbox_material_soft_dark.toml /home/hong/.config/alacritty/gruvbox_material_soft_dark.toml

# helix
install -Dm644 -o hong -g hong /usr/share/dotconfig/helix/config.toml /home/hong/.config/helix/config.toml
