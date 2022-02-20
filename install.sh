#!/bin/bash

cp -r xpple_menu/applications /home/"$USER"/.local/share
mkdir -p /home/"$USER"/.config/menu/
cp -r xpple_menu/xpple.menu /home/"$USER"/.config/menu/

#GTK theme
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light
#Icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh
#Cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
WhiteSur-cursors/install.sh
#Ulaucher theme
mkdir -p /home/"$USER"/.config/ulauncher/
cp -r "ulauncher theme"/* /home/"$USER"/.config/ulauncher/
#Plank theme
mkdir -p /home/"$USER"/.local/share/plank/themes/
cp -r WhiteSur-gtk-theme/src/other/plank/* /home/"$USER"/.local/share/plank/themes/
cp -r plank/mcOS-BS-iMacM1-Black/ /home/"$USER"/.local/share/plank/themes/


