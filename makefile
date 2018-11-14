
install:
	echo "Installing fonts"
	mkdir -p /usr/share/fonts/mm && cp ./mm/*.ttf /usr/share/fonts/mm
	echo "Installing keyboard"
	mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig 
	cp ./evdev.xml /usr/share/X11/xkb/rules
	cp ./zg /usr/share/X11/xkb/symbols
	echo "Adding fonts.conf"
	mkdir -p ~/.config/fontconfig && cp ./fonts.conf ~/.config/fontconfig
	echo "Done!"
perm: 
	echo "Your username is "$$USER
	sudo chmod 700 ~/.config/fontconfig 
	sudo chown -R $$USER ~/.config/fontconfig
	echo "Done!"
uninstall:
	echo "Removing fonts"
	rm -rf /usr/share/fonts/mm
	echo "Removing keyboard layout"
	rm -rf /usr/share/X11/xkb/symbols/zg
	echo "Removing fonts.conf"
	rm -rf ~/.config/fontconfig
	test -f /usr/share/X11/xkb/rules/evdev.xml.orig && echo "Found evdev.xml.orig! Restoring..." && rm -rf /usr/share/X11/xkb/rules/evdev.xml && mv /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml || echo "evdev.xml.orig not found! Skipped restoration of evdev.xml.orig"
	echo "Done!"
zawgyi:
	echo "Setting system fallback font to Zawgyi"
	sed -i "s/Myanmar3/Myanmar Text/g" ~/.config/fontconfig/fonts.conf
	echo "Done!"
unicode:
	echo "Setting system fallback font to Myanmar3"
	sed -i "s/Zawgyi-One/Myanmar Text/g" ~/.config/fontconfig/fonts.conf
	echo "Done!"

.PHONY: install uninstall perm zawgyi unicode
.SILENT: uninstall install perm zawgyi unicode
