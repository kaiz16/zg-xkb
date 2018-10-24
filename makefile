
install:
	mkdir -p /usr/share/fonts/mm && cp ./mm/*.ttf /usr/share/fonts/mm
	mv /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig 
	cp ./evdev.xml /usr/share/X11/xkb/rules
	cp ./zg /usr/share/X11/xkb/symbols
	mkdir -p ~/.config/fontconfig && cp ./fonts.conf ~/.config/fontconfig
perm: 
	echo $$USER
	sudo chmod 700 ~/.config/fontconfig 
	sudo chown -R $$USER ~/.config/fontconfig
uninstall:
	rm -rf /usr/share/fonts/mm
	rm -rf /usr/share/X11/xkb/rules/evdev.xml
	mv /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml
	rm -rf /usr/share/X11/xkb/symbols/zg
	rm -rf ~/.config/fontconfig 

.PHONY: install uninstall perm
