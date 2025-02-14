#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install -y i3 alacritty picom flameshot rofi python3-i3ipc feh seclists golang fzf

echo 'source <(fzf --zsh)' >> $HOME/.zshrc
echo 'PATH=$PATH:$HOME/go/bin' >> $HOME/.zshrc


go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
go install github.com/heartbeatsjp/check-tls-cert@latest

$HOME/go/bin/pdtm -ia

pipx install git+https://github.com/JavaliMZ/getNmapAndCensysToTable.git
pipx install git+https://github.com/JavaliMZ/getTLSInformationToTable.git
pipx install git+https://github.com/JavaliMZ/getIPsFromDomains.git


sudo apt purge -y zsh-syntax-highlighting

main_url='https://raw.githubusercontent.com/JavaliMZ/setup_kali/main'

mkdir -p $HOME/.config/i3
wget -O $HOME/.config/i3/config $main_url/config
wget -O $HOME/.config/i3/alternating_layouts.py $main_url/alternating_layouts.py
chmod +x $HOME/.config/i3/alternating_layouts.py

mkdir -p $HOME/.config/alacritty
wget -O $HOME/.config/alacritty/alacritty.toml $main_url/alacritty.toml


echo "Setup completed successfully!"
