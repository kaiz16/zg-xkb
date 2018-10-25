Burmese Keyboard and Fonts
=========================

## What is this?

- This is a Burmese Zawgyi keyboard which is based on xkb default keyboard. 
- It also includes Unicode and Zawgyi font so you can read and write using Zawgyi or Unicode by switching the System Fallback font (~/.config/fontconfig/fonts.conf).

## Installation

- Simply clone this repo. If you don't have git you can download the zip file and extract it.
```
$ git clone https://github.com/kaiz16/zg-xkb.git
```
- For those who don't have make installed default. If you have make installed you can simply skip this part.
```
$ sudo apt install make
```
- To install.
```
$ cd zg-xkb
$ sudo make install
$ make perm (Do not add sudo because the $USER variable is translated to root if the sudo command on)
```

- Then log out or restart your device. By going into input sources or text entry you will see two keyboards. You can simply choose which one to add depending on your System Fallback font. 
- Burmese (Default Unicode keyboard) 
- Burmese Zawgyi (Zawgyi keyboard) 

## Switching System Fallback font

- Your default system font will be changed to Zawgyi-One after installation. To switch System Fallback font. Type the commands below.
```
$ cd zg-xkb
$ make unicode (Your system fallback font will change to Myanmar3)
$ make zawgyi (Your system fallback font will change to Zawgyi-One)
```

## Uninstallation
```
$ cd zg-xkb
$ sudo make uninstall 
```


