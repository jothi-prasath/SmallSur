#!/bin/bash

user_dir="$SUDO_USER"

#Global menu
apt install xfce4-appmenu-plugin

#Xpple menu
mkdir -p /home/"$user_dir"/.local/share/
cp -r xpple_menu/applications /home/"$user_dir"/.local/share
mkdir -p /home/"$user_dir"/.config/menu/
cp -r xpple_menu/xpple.menu /home/"$user_dir"/.config/menu/

#GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light

#Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh

#Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cp -r WhiteSur-cursors/dist/ /home/$user_dir/.local/share/icons/

#Ulaucher theme
mkdir -p /home/"$user_dir"/.config/ulauncher/
cp -r "ulauncher theme"/* /home/"$user_dir"/.config/ulauncher/

#Plank themes
mkdir -p /home/"$user_dir"/.local/share/plank/themes/
cp -r WhiteSur-gtk-theme/src/other/plank/* /home/"$user_dir"/.local/share/plank/themes/
cp -r plank/mcOS-BS-iMacM1-Black/ /home/"$user_dir"/.local/share/plank/themes/

