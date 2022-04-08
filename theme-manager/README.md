# T-ui Theme-manager
<br>

T-ui (Expert) Theme-manager a.k.a. ttm is a script created to manage T-ui Expert themes.


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
   * TEL / Termux

**NOTE:** devices without root will almost certainly have to install themes via TEL / Termux or any other Terminal emulator. <br>
The other ttm commands work directly in t-ui expert without problems (except ttm -u; ttm --update)


## How to install

**Option 1: manual download**
* Download [install_ttm.zip](https://github.com/M4dGun/t-ui_themes/raw/main/theme-manager/install_ttm.zip) and extract it into your internal storage ( /storage/emulated/0 ).
* On t-ui, change directory to the extracted folder if you are in a location other than the internal memory. 
* Then type `sh install_ttm.sh` and wait for installation to finish.
* When setup is done, `restart` or `refresh` t-ui.

