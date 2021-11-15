#!/bin/bash

cp -r xpple_menu/applications/ /home/jothiprasath/.local/share
cp xpple_menu/xpple.menu /home/jothiprasath/.config/menu/
cp -r "ulauncher theme"/* /home/jothiprasath/.config/ulauncher/


cd /home/jothiprasath/Downloads/
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
WhiteSur-gtk-theme/install.sh -c dark -c light
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
WhiteSur-icon-theme/install.sh
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
WhiteSur-cursors/install.sh
cp -r WhiteSur-gtk-theme/src/other/plank/* /home/jothiprasath/.local/share/plank/themes/


