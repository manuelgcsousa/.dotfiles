#!/usr/bin/bash

# overview
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Space']"

# windows
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>f']"
gsettings set org.gnome.desktop.wm.keybindings close "['<Shift><Super>q']"

# workspace switching and moving
for i in {1..9}
do
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-$i "['<Super>$i']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-$i "['<Super><Shift>$i']"
done
