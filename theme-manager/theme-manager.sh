#!/bin/sh
## Author  : Arun cs (aruncs31s)
## Mail    : aruncs31sss@gmail.com
## Github  : @aruncs31s
## Telegram : @killadinjan
## T-ui expert : T-ui  theme-manger 
#cat <<- EOF
#		#####  #  #  #####
#		  #    #  #    #
#		  #    #  #    #   
#		  #    ####  #####
#
#
#
#	EOF
echo "T-ui Expert Theme Manager"
######
tui=/storage/emulated/0/t-ui
sd=/storage/emulated/0
sdt=/storage/emulated/0/tui-themes
arunsconst=/storage/emulated/0/tui-themes
######
theme_1=DRACULA_THEME_2022
theme_2=Grid_theme
theme_3=WallX_theme
theme_4=Tomboy.girl_theme
theme_5=ff
######
usage(){
printf "Usage \ntui-theme show <to --show the list of themes>\ntui-theme number_of_the_theme \nfor example tui-theme 1 <this will install DRACULA_THEME_2022"
}

if [[(-f $sdt)]]; then
	echo "tui-themes alrey exist " ; sleep 1.0
	else
	mkdir $sdt &>/dev/null
	fi
    
install_1(){
	mv $tui $sd/tui.bak &>/dev/null
	printf "\nDownloading theme ..\n" ;
	if [[(-f /bin/curl)]]; then 
	
        cd $sdt && curl -LJO https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip

    	else 
        cd $sdt && wget https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip &>/dev/null ;
	fi
	printf "\nFinished Downloading\n" ;
	sleep 2.0
	printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
  	mkdir $tui
  	unzip -o  DRACULA_THEME_2022.zip -d $tui ; cd $tui/$theme1  && cp -r * $tui  ;
	printf "\nfinished Installing\n"
	sleep 1.0 
	printf "\nNow type restart in t-ui \n"
}
install_2(){
	mkdir $arunsconst &>/dev/null
	mv $tui $sd/tui.bak &>/dev/null
	printf "\nDownloading theme ..\n" ;
    if [[(-f /bin/curl )]]; then 
        cd $sdt && curl -LO https://github.com/M4dGun/t-ui_themes/blob/main/Grid_theme/t-ui_grid.zip?raw=true && mv $sdt/t-ui_grid.zip?raw=true t-ui_grid.zip
	printf "\nFinished Downloading\n"
    
    else 
    
        cd $sdt && wget https://github.com/M4dGun/t-ui_themes/blob/main/Grid_theme/t-ui_grid.zip?raw=true  &>/dev/null ;
    
  fi
  printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
  unzip -o  $sdt/t-ui_grid.zip -d $tui ; cd $tui/t-ui  && cp -r * $tui  ;

}
install_3(){
mkdir $arunsconst &>/dev/null
	mv $tui $sd/tui.bak &>/dev/null
	printf "\nDownloading theme .. Waite it will take time\n" ;
    if [[(-f /bin/curl )]]; then 
        cd $sdt && curl -L 'https://github.com/M4dGun/t-ui_themes/blob/main/WallX_theme/t-ui_WallX.zip?raw=true' -o $sdt/t-ui_WallX.zip  &>/dev/null
	printf "\nFinished Downloading\n"
    
    else 
    
        cd $sdt && wget 'https://github.com/M4dGun/t-ui_themes/blob/main/WallX_theme/t-ui_WallX.zip?raw=true' -O $sdt/t-ui_WallX.zip >/dev/null ;

  fi
  printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
  unzip -o  $sdt/t-ui_WallX.zip -d $tui ;


}
install_4(){
	mkdir $arunsconst
	mv $tui $sd/tui.bak &>/dev/null
	printf "\nDownloading theme .. Wait a bit\n" ;
    if [[(-f /bin/curl )]]; then 
        cd $sdt && curl -L 'https://github.com/M4dGun/t-ui_themes/blob/main/Tomboy.girl_theme/tomboy.zip?raw=true' -o $sdt/tomboy.zip  &>/dev/null
	printf "\nFinished Downloading\n"
	
    else 
    
        cd $sdt && wget 'https://github.com/M4dGun/t-ui_themes/blob/main/Tomboy.girl_theme/tomboy.zip?raw=true' -O $sdt/tomboy.zip >/dev/null ;

  fi
	printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
	unzip -o  $sdt/tomboy.zip -d $tui ;
	cp -r $tui/tomboy_girl/* $tui
	printf "$theme_4 is installed \n now run \"restart\" in t-ui"


}
show(){
    printf "\n1.$theme_1\n2.$theme_2\n3.$theme_3\n4.$theme_4"
}
version(){
	echo "version 0.0.4"
}
help_1(){
    printf "\n --show  = show themes\n --help = show this menu \n --version = show/check the version \n"
}
###############
####main#######
###############
if [[ "$1" == "1" ]]; then
	install_1
elif [[ "$1" == "2" ]]; then
	install_2
elif [[ "$1" == "3" ]]; then
	install_3
elif [[ "$1" == "4" ]]; then
	install_4
elif [[ "$1" == "--show" ]]; then
	show
elif [[ "$1" == "--version" ]]; then
	version
elif [[ "$1" == "--help" ]]; then
help_1
else
	usage
fi
