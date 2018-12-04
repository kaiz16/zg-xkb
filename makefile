
install:
	echo "Installing"
	mkdir -p /usr/share/fonts/mm && cp ./mm/*.ttf /usr/share/fonts/mm #add fonts
	mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig #backup stock rules
	cp ./src/evdev.xml /usr/share/X11/xkb/rules #add modified rules
	cp ./src/zg /usr/share/X11/xkb/symbols #add zawgyi keyboard layout
	test -d /usr/share/mmfs || mkdir -p /usr/share/mmfs && cp ./src/mmfs/* /usr/share/mmfs/
	ln -s /usr/share/mmfs/mmfs /usr/local/bin/mmfs
	cp ./src/mmfs/myanmar-font-switcher.desktop /usr/share/applications/
	echo "Done!"

uninstall:
	echo "Uninstalling"
	rm -rf /usr/share/fonts/mm
	rm -rf /usr/share/X11/xkb/symbols/zg
	test -f /usr/share/X11/xkb/rules/evdev.xml.orig && echo "Found evdev.xml.orig! Restoring..." && rm -rf /usr/share/X11/xkb/rules/evdev.xml && mv /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml || echo "evdev.xml.orig not found! Skipped restoration of evdev.xml.orig"
	#remove sh files if exists
	rm -rf /usr/share/mmfs && rm -rf /usr/local/bin/mmfs
	rm -rf /usr/share/applications/myanmar-font-switcher.desktop
	rm -rf ~/.config/fontconfig
	echo "Done!"

.PHONY: install uninstall
.SILENT: install uninstall
