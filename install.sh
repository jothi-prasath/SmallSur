#!/bin/bash

user_name="$SUDO_USER"

#Global menu
apt install xfce4-appmenu-plugin appmenu-*

#Xpple menu
mkdir -p /home/"$user_name"/.local/share/
cp -r xpple_menu/applications /home/"$user_name"/.local/share
mkdir -p /home/"$user_name"/.config/menu/
cp -r xpple_menu/xpple.menu /home/"$user_name"/.config/menu/

#GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light

#Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh

#Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cp -r WhiteSur-cursors/dist/ /home/$user_name/.local/share/icons/

#Ulaucher theme
mkdir -p /home/"$user_name"/.config/ulauncher/
cp -r "ulauncher theme"/* /home/"$user_name"/.config/ulauncher/
chown -R $user_name /home/"$user_name"/.config/ulauncher/*

#Plank themes
mkdir -p /home/"$user_name"/.local/share/plank/themes/
cp -r WhiteSur-gtk-theme/src/other/plank/* /home/"$user_name"/.local/share/plank/themes/
cp -r plank/mcOS-BS-iMacM1-Black/ /home/"$user_name"/.local/share/plank/themes/

#Firefox theme
cd WhiteSur-gtk-theme/tweaks.sh -f monterey 

#Xfce4-panel
killall xfce4-panel 
cp -r xfce4-panel/xfce4-panel.xml /home/$user_name/.config/xfce4/xfconf/xfce-perchannel-xml/
reboot