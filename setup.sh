#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y i3 alacritty picom flameshot rofi python3-i3ipc feh

sudo apt purge -y zsh-syntax-highlighting

main_url='https://raw.githubusercontent.com/JavaliMZ/setup_kali/main'

mkdir -p $HOME/.config/i3
wget -O $HOME/.config/i3/config $main_url/config
wget -O $HOME/.config/i3/alternating_layouts.py $main_url/alternating_layouts.py
chmod +x $HOME/.config/i3/alternating_layouts.py

mkdir -p $HOME/.config/alacritty
wget -O $HOME/.config/alacritty/alacritty.yml $main_url/alacritty.yml


# Enable i3 to start on boot with XFCE4 DE, and disable XFCE4 Window Manager
setxkbmap pt


sudo apt install python3-i3ipc
echo "Setup completed successfully!"