
install:
	echo "Installing"
	mkdir -p /usr/share/fonts/mm && cp ./mm/*.ttf /usr/share/fonts/mm #add fonts
	mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig #backup stock rules
	cp ./src/evdev.xml /usr/share/X11/xkb/rules #add modified rules
	cp ./src/zg /usr/share/X11/xkb/symbols #add zawgyi keyboard layout
	mkdir -p ~/.config/fontconfig && cp ./src/fonts.conf ~/.config/fontconfig #add fontconfig
	sudo chown -R $$SUDO_USER:$$SUDO_USER ~/.config/fontconfig #set user permission instead of root
	mkdir -p ~/bin && cp ./src/zawgyi ~/bin && cp ./src/unicode ~/bin #add sh files to bin
	chmod a+x ~/bin/zawgyi ~/bin/unicode #make them executables
	sudo chown -R $$SUDO_USER:$$SUDO_USER ~/bin #set user permission instead of root
	echo "Done!"

uninstall:
	echo "Uninstalling"
	rm -rf /usr/share/fonts/mm
	rm -rf /usr/share/X11/xkb/symbols/zg
	rm -rf ~/.config/fontconfig
	test -f /usr/share/X11/xkb/rules/evdev.xml.orig && echo "Found evdev.xml.orig! Restoring..." && rm -rf /usr/share/X11/xkb/rules/evdev.xml && mv /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml || echo "evdev.xml.orig not found! Skipped restoration of evdev.xml.orig"
	#remove sh files if exists
	[ -f ~/bin/zawgyi -o -f ~/bin/unicode ] && echo "Removing sh files" && \
	for sh in ~/bin/zawgyi ~/bin/unicode ; do \
		rm -f $$sh ; \
	done || echo "sh files not found so not removed"
	echo "Done!"

.PHONY: install uninstall
.SILENT: install uninstall
