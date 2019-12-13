## Burmese Keyboard and Fonts

- This is a Burmese Zawgyi keyboard, based on xkb default keyboard. 
- It also includes **Zenity GUI Application** so you can switch between fonts with **Myanmar Font Switcher**

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
- **Noto Sans Myanmar ZawDecode** (Unicode/Zawgyi)
- **Oxygen Zawgyi** (Zawgyi)

## Uninstallation
```
$ cd zg-xkb
$ sudo make uninstall 
```
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
