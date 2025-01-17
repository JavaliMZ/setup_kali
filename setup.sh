sudo apt update && sudo apt upgrade -y
sudo apt install -y i3 alacritty picom flameshot rofi

echo "Configuring .config/i3/config file"
echo '' > $HOME/.config/i3/config
echo 'exec_always picom -f --config $HOME/.config/picom/picom.conf' >> $HOME/.config/i3/config
echo 'exec_always python $HOME/.config/i3/alternating_layouts.py' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# i3 settings' >> $HOME/.config/i3/config
echo 'mouse_warping none' >> $HOME/.config/i3/config
echo 'set $mod Mod4' >> $HOME/.config/i3/config
echo 'font pango:monospace 15' >> $HOME/.config/i3/config
echo 'gaps inner 5' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Lancher' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+p exec flameshot screen' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+o exec flameshot gui' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+s exec flameshot gui' >> $HOME/.config/i3/config
echo 'bindsym $mod+Return exec alacritty' >> $HOME/.config/i3/config
echo 'bindsym $mod+t exec alacritty' >> $HOME/.config/i3/config
echo 'bindsym $mod+e exec thunar' >> $HOME/.config/i3/config
echo 'bindsym $mod+g exec firefox' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo 'bindsym $mod+w kill' >> $HOME/.config/i3/config
echo 'bindsym $mod+space exec rofi --show' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Moving and controling windows' >> $HOME/.config/i3/config
echo 'bindsym $mod+Left focus left' >> $HOME/.config/i3/config
echo 'bindsym $mod+Down focus down' >> $HOME/.config/i3/config
echo 'bindsym $mod+Up focus up' >> $HOME/.config/i3/config
echo 'bindsym $mod+Right focus right' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+Left move left' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+Down move down' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+Up move up' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+Right move right' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Full and float windows' >> $HOME/.config/i3/config
echo 'bindsym $mod+f fullscreen toggle' >> $HOME/.config/i3/config
echo 'bindsym $mod+s floating toggle' >> $HOME/.config/i3/config
echo 'floating_modifier $mod' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Workspaces' >> $HOME/.config/i3/config
echo 'set $ws1 "1"' >> $HOME/.config/i3/config
echo 'set $ws2 "2"' >> $HOME/.config/i3/config
echo 'set $ws3 "3"' >> $HOME/.config/i3/config
echo 'set $ws4 "4"' >> $HOME/.config/i3/config
echo 'set $ws5 "5"' >> $HOME/.config/i3/config
echo 'set $ws6 "6"' >> $HOME/.config/i3/config
echo 'set $ws7 "7"' >> $HOME/.config/i3/config
echo 'set $ws8 "8"' >> $HOME/.config/i3/config
echo 'set $ws9 "9"' >> $HOME/.config/i3/config
echo 'bindsym $mod+1 workspace number $ws1' >> $HOME/.config/i3/config
echo 'bindsym $mod+2 workspace number $ws2' >> $HOME/.config/i3/config
echo 'bindsym $mod+3 workspace number $ws3' >> $HOME/.config/i3/config
echo 'bindsym $mod+4 workspace number $ws4' >> $HOME/.config/i3/config
echo 'bindsym $mod+5 workspace number $ws5' >> $HOME/.config/i3/config
echo 'bindsym $mod+6 workspace number $ws6' >> $HOME/.config/i3/config
echo 'bindsym $mod+7 workspace number $ws7' >> $HOME/.config/i3/config
echo 'bindsym $mod+8 workspace number $ws8' >> $HOME/.config/i3/config
echo 'bindsym $mod+9 workspace number $ws9' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+1 move container to workspace number $ws1; workspace number $ws1' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+2 move container to workspace number $ws2; workspace number $ws2' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+3 move container to workspace number $ws3; workspace number $ws3' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+4 move container to workspace number $ws4; workspace number $ws4' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+5 move container to workspace number $ws5; workspace number $ws5' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+6 move container to workspace number $ws6; workspace number $ws6' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+7 move container to workspace number $ws7; workspace number $ws7' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+8 move container to workspace number $ws8; workspace number $ws8' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+9 move container to workspace number $ws9; workspace number $ws9' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Reload and Restart' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+r reload' >> $HOME/.config/i3/config
echo 'bindsym $mod+Shift+Ctrl+r restart' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config
echo '# Hide all titles' >> $HOME/.config/i3/config
echo 'for_window [class="^.*"] border pixel 2' >> $HOME/.config/i3/config
echo 'client.focused #4c116a #4c116a #4c116a #4c116a #4c116a' >> $HOME/.config/i3/config
echo 'client.focused_inactive #4c116a30 #4c116a30 #4c116a30 #4c116a30 #4c116a30' >> $HOME/.config/i3/config
echo '' >> $HOME/.config/i3/config


echo "Configuring .config/alacritty/alacritty.toml file"
echo 'colors.draw_bold_text_with_bright_colors = true' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[cursor.style]' >> $HOME/.config.alacritty/alacritty.toml
echo '# blink_interval = 500' >> $HOME/.config.alacritty/alacritty.toml
echo 'blinking = "Always"' >> $HOME/.config.alacritty/alacritty.toml
echo 'shape = "Beam"' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[font]' >> $HOME/.config.alacritty/alacritty.toml
echo 'size = 13.0' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[scrolling]' >> $HOME/.config.alacritty/alacritty.toml
echo 'history = 100000' >> $HOME/.config.alacritty/alacritty.toml
echo 'multiplier = 6' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[window]' >> $HOME/.config.alacritty/alacritty.toml
echo 'decorations = "none"' >> $HOME/.config.alacritty/alacritty.toml
echo 'decorations_theme_variant = "Dark"' >> $HOME/.config.alacritty/alacritty.toml
echo 'opacity = 0.96' >> $HOME/.config.alacritty/alacritty.toml
echo 'blur = true' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[window.class]' >> $HOME/.config.alacritty/alacritty.toml
echo 'general = "Alacritty"' >> $HOME/.config.alacritty/alacritty.toml
echo 'instance = "Alacritty"' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[window.padding]' >> $HOME/.config.alacritty/alacritty.toml
echo 'x = 15' >> $HOME/.config.alacritty/alacritty.toml
echo 'y = 15' >> $HOME/.config.alacritty/alacritty.toml
echo '[selection]' >> $HOME/.config.alacritty/alacritty.toml
echo 'save_to_clipboard = true' >> $HOME/.config.alacritty/alacritty.toml
echo '' >> $HOME/.config.alacritty/alacritty.toml
echo '[general]' >> $HOME/.config.alacritty/alacritty.toml
echo 'live_config_reload = true' >> $HOME/.config.alacritty/alacritty.toml