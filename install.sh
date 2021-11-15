#!/bin/bash

cp -r xpple_menu/applications /home/"$USER"/.local/share
mkdir /home/"$USER"/.config/menu/
cp -r xpple_menu/xpple.menu /home/"$USER"/.config/menu/
cp -r "ulauncher theme"/* /home/"$USER"/.config/ulauncher/


cd /home/"$USER"/Downloads/
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
WhiteSur-cursors/install.sh
cp -r WhiteSur-gtk-theme/src/other/plank/* /home/"$USER"/.local/share/plank/themes/


