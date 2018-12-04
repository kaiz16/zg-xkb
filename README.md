## Burmese Keyboard and Fonts

- This is a Burmese Zawgyi keyboard which is based on xkb default keyboard. 
- It also includes **Zenity GUI Application** so you can switch to Zawgyi or Unicode with **Myanmar Font Switcher**

## Installation

- Simply clone this repo. If you don't have git you can download the zip file and extract it.
```
$ git clone https://github.com/kaiz16/zg-xkb.git
$ sudo apt install make
$ cd zg-xkb
$ sudo make install
```
- Then **log out** or **restart** your device. By going into input sources or text entry you will see two keyboards. You can simply choose which one to add depending on your System Fallback font. 
- **Burmese** (Default Unicode keyboard) 
- **Burmese Zawgyi** (Zawgyi keyboard) 

## Switching System Fallback font

- Your default system font will be changed to **Oxygen Zawgyi** after installation. To switch fonts, search **Myanmar Font Switcher** in Dashboard. You can change any font you like in there, For now there's three fonts avaialable
- **Myanmar3** (Unicode)
- **Noto Sans Myanmar** (Unicode)
- **Oxygen Zawgyi** (Zawgyi)

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

## Development

This repo is developed and maintained by [Kaung Mon Htay]

[Kaung Mon Htay]: https://github.com/kaiz16

## Credits

- Saturngod 
- Box2
- ThuraHlaing
- [Ubuntu Myanmar LoCo Team]
- [Naing Ye` Minn]

[Ubuntu Myanmar LoCo Team]: https://ubuntu-mm.net

[Naing Ye` Minn]: https://github.com/naingyeminn
