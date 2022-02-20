#!/bin/sh 
echo "T-ui Expert Theme Installer"
tui=/storage/emulated/0/t-ui
theme1=DRACULA_THEME_2022
theme2=ffffff
theme_3=fffffff
usage(){
printf "Usage \ntui-theme show <to --show the list of themes>\ntui-theme number_of_the_theme \nfor example tui-theme 1 <this will install DRACULA_THEME_2022"
}
install_1(){
    mv /storage/emulated/0/t-ui /storage/emulated/0/tui.bak
    if [[(-f /bin/curl)]]; then 
    
        cd /sdcard && curl -LJO https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip

    
    else 
    
        cd /sdcard && wget https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip
    
  fi
    unzip -o  DRACULA_THEME_2022.zip -d $'t-ui' ; cd $tui/$theme1  && cp * $tui  ;
}
show(){
    printf "\n1.DRACULA_THEME\n"
}
if [[ "$1" == "1" ]]; then
install_1
elif [[ "$1" == "--show" ]]; then
show
else
	usage
fi
