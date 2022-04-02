#!/bin/bash

user_name="$USER"

#Global menu
sudo apt install xfce4-appmenu-plugin appmenu-* -y

#Xfce4 plugins
sud apt install xfce4-indicator-plugin xfce4-statusnotifier-plugin xfce4-power-manager xfce4-pulseaudio-plugin xfce4-notifyd -y

#GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light

#Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh

#Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cp -rp WhiteSur-cursors/dist/ /home/$user_name/.local/share/icons/

#Wallpapers
cp -rp img/* /home/"$user_name"/Pictures/

#Ulaucher theme
mkdir -p /home/"$user_name"/.config/ulauncher/
cp -rp "ulauncher theme"/* /home/"$user_name"/.config/ulauncher/


#Plank themes
mkdir -p /home/"$user_name"/.local/share/plank/themes/
cp -rp WhiteSur-gtk-theme/src/other/plank/* /home/"$user_name"/.local/share/plank/themes/
cp -rp plank/mcOS-BS-iMacM1-Black/ /home/"$user_name"/.local/share/plank/themes/

#Firefox theme
sudo killall firefox
WhiteSur-gtk-theme/tweaks.sh -f monterey 

#Xfce4-panel
sudo killall xfce4-panel 
cp -rp xfce4-panel/xfce4-panel.xml /home/$user_name/.config/xfce4/xfconf/xfce-perchannel-xml/

xfconf-query -c xsettings -p /Net/ThemeName -s "WhiteSur-dark" #Applying theme 
xfconf-query -c xsettings -p /Net/IconThemeName -s 'WhiteSur-dark' #Icon theme
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s "WhiteSur Cursors" #Cursor theme

sudo reboot