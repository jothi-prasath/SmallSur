#!/bin/bash

user_name="$USER"

#Global menu
sudo apt install xfce4-appmenu-plugin appmenu-* -y

#Xfce4 plugins
sudo apt install xfce4-indicator-plugin xfce4-statusnotifier-plugin xfce4-power-manager xfce4-pulseaudio-plugin xfce4-notifyd -y

#GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light

#Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh

#Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
mkdir -p ~/.local/share/icons/
cp -r WhiteSur-cursors/dist/ ~/.local/share/icons/

#Wallpapers
mkdir -p ~/Pictures/
cp -r wallpaper/* ~/Pictures/

#Plank themes
mkdir -p ~/.local/share/plank/themes/
cp -rp WhiteSur-gtk-theme/src/other/plank/* ~/.local/share/plank/themes/
cp -rp plank/mcOS-BS-iMacM1-Black/ ~/.local/share/plank/themes/

#Xfce4-panel
sudo killall xfce4-panel 
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml/
cp -rp xfce4-panel/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/

#Applying theme 
xfconf-query -c xsettings -p /Net/ThemeName -s "WhiteSur-dark" 
#Icon theme
xfconf-query -c xsettings -p /Net/IconThemeName -s 'WhiteSur-dark' 
#Cursor theme
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "WhiteSur Cursors" 

echo "SmallSur installed"
echo "Reboot You system"