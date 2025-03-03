#!/bin/bash

# Global variables
ZSHRC="$HOME/.zshrc"
MAIN_URL='https://raw.githubusercontent.com/JavaliMZ/setup_kali/main'
PREEXEC_CODE='
preexec() {
    echo -e "$(date -u)\n"
}
'

# Functions
# Check if the function already exists
add_to_zshrc_if_not_exists() {
    local content="$1"
    local message="$2"
    local check="$3"

    if grep -q "$check" "$ZSHRC"; then
        echo "$message already exists in .zshrc. No changes made."
    else
        echo "$content" >> "$ZSHRC"
        echo "$message added to .zshrc."
        source "$ZSHRC"
    fi
}

############################################
############# Main script ##################
############################################

# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Install necessary packages
packages=(
    i3
    alacritty
    picom
    flameshot
    rofi
    python3-i3ipc
    feh
    seclists
    golang
    fzf
    docker.io
    moreutils
    jq
    xclip
)

sudo apt install -y "${packages[@]}"

sudo apt purge -y zsh-syntax-highlighting

go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
go install -v github.com/heartbeatsjp/check-tls-cert@latest
go install -v github.com/s0md3v/smap/cmd/smap@latest

$HOME/go/bin/pdtm -ia

pipx install git+https://github.com/JavaliMZ/getNmapAndCensysToTable.git
pipx install git+https://github.com/JavaliMZ/getTLSInformationToTable.git
pipx install git+https://github.com/JavaliMZ/getIPsFromDomains.git

# Download and setup config files
mkdir -p $HOME/.config/i3
wget -O $HOME/.config/i3/config $MAIN_URL/config
wget -O $HOME/.config/i3/alternating_layouts.py $MAIN_URL/alternating_layouts.py
chmod +x $HOME/.config/i3/alternating_layouts.py

mkdir -p $HOME/.config/alacritty
wget -O $HOME/.config/alacritty/alacritty.toml $MAIN_URL/alacritty.toml

# Add necessary lines to .zshrc
add_to_zshrc_if_not_exists "$PREEXEC_CODE" "preexec function" "preexec()"
add_to_zshrc_if_not_exists 'source <(fzf --zsh)' "fzf" "fzf --zsh"
add_to_zshrc_if_not_exists 'PATH=$PATH:$HOME/go/bin:$HOME/.pdtm/go/bin' "go bin" "go/bin"
add_to_zshrc_if_not_exists 'alias intoclip="xclip -selection clipboard"' "intoclip alias" "intoclip"


echo "Setup completed successfully!"
