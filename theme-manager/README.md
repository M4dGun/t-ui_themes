# T-ui Theme-manager
<br>

T-ui (Expert) Theme-manager a.k.a. ttm is a script created to manage T-ui Expert themes.


<img src="https://github.com/M4dGun/t-ui_themes/blob/main/theme-manager/ttm_example.jpg" data-canonical-src="https://github.com/M4dGun/t-ui_themes/blob/main/theme-manager/ttm_example.jpg" width="350" />
<br>


## Features

Its main functions are:

   * Install a theme chosen from those available
   * show the list of available themes
   * show theme previews, via GitHub
   * backup your current theme
   * restore the previous backup
   * update the script and the list of available themes

## Prerequisites:
   * [T-UI Expert](https://github.com/v1nc/T-UI-Expert/releases/download/v0.4.4e/de.reckendrees.systems.tui.expert_fdroid_v.0.4.4e.apk)
   * TEL / Termux or Busybox (the script needs to access curl or wget to execute some commands)
<br>
You can use this script in 2 ways:<br>
   1. Through t-ui (if you have root[×] or without root if you can use curl or wget without the command "termux curl" / "termux wget")<br>
   2. Via Termux or TEL or another Terminal emulator (remembering to install curl or wget if not present)<br>
<br>
[×]: if you are rooted then export Termux/TEL user bin folder into the PATH from T-UI:<br>
      `export PATH=$PATH:/data/data/com.termux/files/usr/bin/`<br>
      or <br>
      `export PATH=$PATH:/data/data/com.termux/files/usr/bin/:/data/data/com.termux/files/usr/bin/applets && su -c tsu`<br>
      
In the first case you can type in su to get sudo access: now you can use all commands of Termux bin folder from T-UI and profit. <br>

## How to install

**Option 1: automatic download**
* Download [install_ttm.zip](https://github.com/M4dGun/t-ui_themes/raw/main/theme-manager/install_ttm.zip) and extract it into your internal storage ( /storage/emulated/0 ).
* On t-ui, change directory to the extracted folder if you are in a location other than the internal memory. 
* Then type if you are rooted then export Termux user bin folder into the PATH from T-UIsh install_ttm.sh` and wait for installation to finish.
* When setup is done, `restart` or `refresh` t-ui.
* (Optional) If you can't install ttm via t-ui, you need to use Termux / TEL or another Terminal Emulator: remember to install curl or wget if they are not present

<br>
NOTE: if you can't install ttm anyway, because you don't have root or because the script doesn't find curl or wget, install ttm manually<br>
<br>

**Option 2: manual download**
* Download [ttm script](https://github.com/M4dGun/t-ui_themes/raw/main/theme-manager/ttm.zip) and extract it into your internal storage ( /storage/emulated/0 ).
* On t-ui Expert type:
* `alias -file`
* add these 2 aliases at the bottom of the list
* `ttm=sh /storage/emulated/0/ttm %`
* `ttm -p=search -u https://github.com/M4dGun/t-ui_themes`
* Save file and `restart` or `refresh` t-ui.



## How to use 
WIP...
