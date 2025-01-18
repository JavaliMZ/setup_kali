sudo apt update && sudo apt upgrade -y
sudo apt install -y i3 alacritty picom flameshot rofi


main_url='https://raw.githubusercontent.com/JavaliMZ/setup_kali/refs/heads/main'

mkdir $HOME/.config/i3 -p
wget $main_url/config -o $HOME/.config/i3/
wget $main_url/alternating_layouts.py -o $HOME/.config/i3/

mkdir $HOME/.config/alacritty -p
wget $main_url/alacritty.toml -o $HOME/.config/alacritty