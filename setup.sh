#!/bin/bash

# Check if NOT running in a virtual machine
if [[ $(systemd-detect-virt) == "none" ]]; then
  echo "Not running in a virtual machine. Aborting."
  exit 1 # Exit with an error code
fi

# Virtual machine detected. Continuing with Kali setup.
echo "Virtual machine detected. Continuing with Kali setup."

# Global variables
ZSHRC="$HOME/.zshrc"
MAIN_URL='https://raw.githubusercontent.com/JavaliMZ/setup_kali/main'

############################################
############# Main script ##################
############################################

# Install necessary packages
packages=(
    git
    libpcap-dev
    pipx
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
    massdns
    nmap
    netexec
    nmap
    html2text
    htop
    bat
    python3-impacket
    wireshark
    goshs
    gromit-mpx
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

wget -O $HOME/.config/gromit-mpx.cfg $MAIN_URL/gromit-mpx.cfg


wget -O $HOME/.zshrc_javali $MAIN_URL/.zshrc_javali

wget -O $HOME/.tmux.conf $MAIN_URL/.tmux.conf


# Add .zshrc_javali to .zshrc
if ! grep -q "source $HOME/.zshrc_javali" $ZSHRC; then
    echo "source $HOME/.zshrc_javali" >> $ZSHRC
fi


# Add custom nuclei templates from my personal GitHub 
NUCLEI_TEMPLATES_URL='https://github.com/JavaliMZ/nuclei-templates/archive/refs/heads/main.zip'
wget -O $HOME/Documents/nuclei-templates.zip $NUCLEI_TEMPLATES_URL
unzip $HOME/Documents/nuclei-templates.zip -d $HOME/Documents/
mv $HOME/Documents/nuclei-templates-main/Templates $HOME/Documents/nuclei-templates-javali
rm $HOME/Documents/nuclei-templates.zip
rm -rf $HOME/Documents/nuclei-templates-main

echo "Setup completed successfully!"
