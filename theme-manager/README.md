# T-ui Theme-manager
<br>

T-ui (Expert) Theme-manager a.k.a. ttm is a script created to manage T-ui Expert themes.


<img src="https://github.com/M4dGun/t-ui_themes/blob/main/theme-manager/ttm_example.jpg" data-canonical-src="https://github.com/M4dGun/t-ui_themes/blob/main/theme-manager/ttm_example.jpg" width="350" />
<br>


## 📌 Features

Its main functions are:

* Install a theme chosen from those available
* show the list of available themes
* show theme previews, via GitHub
* backup your current theme
* restore the previous backup
* update the script and the list of available themes

## 📌 Prerequisites:
* [T-UI Expert](https://github.com/v1nc/T-UI-Expert/releases/download/v0.4.4e/de.reckendrees.systems.tui.expert_fdroid_v.0.4.4e.apk)
* TEL / Termux or Busybox (the script needs to access curl or wget to execute some commands)


## 📌 How to install

**Option 1: automatic download**
* Download [install_ttm.zip](https://github.com/M4dGun/t-ui_themes/raw/main/theme-manager/install_ttm1.zip) and extract it into your internal storage ( /storage/emulated/0 ).
* On t-ui, change directory to the extracted folder if you are in a location other than the internal memory. 
* Then type `sh install_ttm.sh` and wait for installation to finish.
* When setup is done, `restart` or `refresh` t-ui.
* (Optional) If you can't install ttm via t-ui, you need to use Termux / TEL or another Terminal Emulator and use bash as the interpreter: `bash install_ttm.sh`

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


## 📌 How to use 

[Work in Progress...]

**You can use the script in 3 different ways:<br>**
1️⃣. Through T-UI Expert with root (easier method)<br>
2️⃣. Through T-UI Expert without root (difficult method)<br>
3️⃣. Through Termux/TEL or another Terminal emulator (medium-easy method)<br>
<br>

### CASE 1️⃣ -- Through T-UI Expert with root

If you are rooted then export Termux/TEL user bin folder into the $PATH. From tuie type:

`export PATH=$PATH:/data/data/com.termux/files/usr/bin/:/data/data/com.termux/files/usr/bin/applets && su -c tsu`

>**NOTE**: *If you are using Termux instead of TEL, it is likely that you need to install the `tsu` package, from Termux then type:
`pkg install tsu` <br>
>This step is not mandatory, you can use ttm script even without tsu package but you will need to change the "init" alias as follows:
`init=export PATH=$PATH:/data/data/com.termux/files/usr/bin/:/data/data/com.termux/files/usr/bin/applets` <br> 
>and remember, whenever you want to use the ttm 'install' and/or 'update' options, or the termux commands from T-UI, you will first have to type `su` and then `init` commands.*
      
Now you can use all commands of Termux bin folder from tuie. <br>
Test it: type `curl --help`<br>

Now type `ttm -h` to view all available commands.<br>

**Important:** *This needs to be done for every session like if TUI Expert app re-launchs or the phone is rebooted etc.. so add an alias called init, type:*<br>
`alias -file` <br>
*Copy and paste this line at the end of file:*<br>
`init=export PATH=$PATH:/data/data/com.termux/files/usr/bin/:/data/data/com.termux/files/usr/bin/applets && su -c tsu` <br>
*Save and refresh t-ui Expert.*
***When you reboot your device or restart t-uie, just type `init`.*** <br>

P.S. With root, another possibility is to install the Busybox static binaries through the Magisk module called: **Busybox for Android NDK**

<br>

### CASE 2️⃣ -- Through T-UI Expert without root



To run ttm script in T-UI Expert without root, you need to be able to run the curl/wget command without the need for T-UI Expert's Termux/TEL integration, that is, without the use of the command: `termux curl`/`termux wget`

[W.I.P.....]

<br>

### CASE 3️⃣ -- Through Termux/TEL or another Terminal emulator

#### With TEL):
edit your ~/.zhsrc file with (for example) nano, type: <br>
`nano ~/.zhsrc` <br>
and add the following lines:<br>
* `alias ttm='bash /storage/emulated/0/ttm'`
* `alias ttm-p='am start -a android.intent.action.VIEW -d https://github.com/M4dGun/t-ui_themes'`
<br>
Now reload .zhsrc, type: ` . ~/.zshrc`

To check themes previews via GitHub, type: `ttm-p`<br>
Type `ttm -h` to view all the other commands.<br>
<br>

#### With TERMUX):<br>
<br>
WIP....<br>
<br>

## TTM options
WIP...



  
  ## Troubleshooting
  
  WiP......
