## Burmese Keyboard and Fonts

- This is a Burmese Zawgyi keyboard which is based on xkb default keyboard. 
- It also includes Unicode and Zawgyi font so you can read and write using Zawgyi or Unicode by switching the System Fallback font (~/.config/fontconfig/fonts.conf).

## Installation

- Simply clone this repo. If you don't have git you can download the zip file and extract it.
```
$ git clone https://github.com/kaiz16/zg-xkb.git
$ sudo apt install make
$ cd zg-xkb
$ sudo make install
```
- Then log out or restart your device. By going into input sources or text entry you will see two keyboards. You can simply choose which one to add depending on your System Fallback font. 
- Burmese (Default Unicode keyboard) 
- Burmese Zawgyi (Zawgyi keyboard) 

## Switching System Fallback font

- Your default system font will be changed to Zawgyi-One after installation. To switch system fallback fonts, type the commands below.
```
$ unicode (Your system fallback font will change to Myanmar3)
$ zawgyi (Your system fallback font will change to Zawgyi-One)
```
- Ubuntu (and Debian based distros) automatically add $HOME/bin to the PATH if that directory is present. In case ~/.profile is not loaded add this to your ~/.bashrc
```
PATH="$HOME/bin:$PATH
```

## Uninstallation
```
$ cd zg-xkb
$ sudo make uninstall 
```
### Notes on fonts.conf

Below fontconfig work in system but doesn't work in any internet browsers. Internet browsers display in Zawgyi even if Unicode is chosen.
Seems like fontconfig is not recognized by the Internet Browsers.
Zawgyi overides the Padauk font because it has more encoding points.
For example,
- Set Zawgyi-One -> Internet browsers display in Zawgyi-One.
- Set Noto Sans Myanmar or Myanmar3 or Padauk -> Internet browsers still -display in Zawgyi-One.
- Remove Zawgyi -> Internet browsers display in Padauk.
- Set Noto Sans Myanmar or Myanmar3 after removing Zawgyi -> Internet browsers display in Padauk.

```
<match target="pattern">
	<test compare="eq" name="lang" qual="any"><string>my</string></test>
	<edit mode="assign" name="family">
		<string>Noto Sans Myanmar</string>
	</edit>
</match>
```
A dirty way to fix this problem without removing fonts is to blacklist all fonts in Burmese language but whitelist only one font. See new configurations in fonts.conf.
