#!bin/bash
sudo mkdir -pv /usr/share/fonts/mm && sudo cp -rv ./mm/*.ttf /usr/share/fonts/mm

sudo mv -v /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig

sudo cp -v ./evdev.xml /usr/share/X11/xkb/rules && sudo cp -v ./zg /usr/share/X11/xkb/symbols

sudo mkdir -v -p ~/.config/fontconfig && sudo cp -v ./fonts.conf ~/.config/fontconfig

sudo chmod 700 -v ~/.config/fontconfig && sudo chown -Rv $USER ~/.config/fontconfig
echo Done
