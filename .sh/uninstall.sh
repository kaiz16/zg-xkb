#!bin/bash
sudo rm -rfv /usr/share/fonts/mm
sudo rm -rfv ~/.config/fontconfig
sudo rm -rfv /usr/share/X11/xkb/symbols/zg
if [ ! -f /usr/share/X11/xkb/rules/evdev.xml.orig ]; then
    	echo "evdev.xml.orig not found! Skipped restoration of evdev.xml.orig"
else 
	echo "Found evdev.xml.orig! Restoring"
	sudo rm -rfv /usr/share/X11/xkb/rules/evdev.xml && sudo mv -v /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml
fi
#sudo rm -rfv /usr/share/X11/xkb/rules/evdev.xml && mv -v /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml && rm -rfv /usr/share/X11/xkb/symbols/zg
echo Done
