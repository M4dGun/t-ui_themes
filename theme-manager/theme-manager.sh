#!/bin/sh
## Author  : Arun cs (aruncs31s)
## Mail    : aruncs31sss@gmail.com
## Github  : @aruncs31s
## Telegram : @killadinjan
## T-ui expert : T-ui  theme-manger 
cat <<- EOF
		#####  #  #  #####
		  #    #  #    #
		  #    #  #    #   
		  #    ####  #####



	EOF
echo "T-ui Expert Theme Manager"
######
tui=/storage/emulated/0/t-ui
sd=/storage/emulated/0
sdt=/storage/emulated/0/tui-themes
######
theme1=DRACULA_THEME_2022
theme2=Grid_theme
theme_3=WallX_theme
theme_4=Tomboy.girl_theme
theme_5=ff
######
usage(){
printf "Usage \ntui-theme show <to --show the list of themes>\ntui-theme number_of_the_theme \nfor example tui-theme 1 <this will install DRACULA_THEME_2022"
}
install_1(){
	if [[ $sdt ]]; then
	echo "Updating " ; sleep 3.0
	else
	mkdir $sdt &>/dev/null
	fi
    	mv $tui $sd/tui.bak &>/dev/null
	printf "\nDownloading theme .. Waite it will take time\n" ;
	if [[(-f /bin/curl)]]; then 
	
        cd $sdt && curl -LJO https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip

    	else 
        cd $sdt && wget https://github.com/M4dGun/t-ui_themes/raw/main/Dracula_theme/DRACULA_THEME_2022.zip &>/dev/null ;
	fi
	printf "\nFinished Downloading\n" ;
	sleep 2.0
	printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
  	mkdir $tui
  	unzip -o  DRACULA_THEME_2022.zip -d $tui ; cd $tui/$theme1  && cp * $tui  ;
	printf "\nfinished Installing\n"
	sleep 1.0 
	printf "\nNow type restart in t-ui \n"
}
install_2(){
	if [[ $sdt ]]; then
	echo "Updating " ; sleep 3.0
	else
	mkdir $sdt &>/dev/null
	fi
    mv $tui $sd/tui.bak &>/dev/null
    
	printf "\nDownloading theme .. Waite it will take time\n" ;
    if [[(-f /bin/curl )]]; then 
        
        cd $sdt && curl -LO https://github.com/M4dGun/t-ui_themes/blob/main/Grid_theme/t-ui_grid.zip?raw=true >> $sdt/t-ui_grid.zip &>/dev/null
	printf "\nFinished Downloading\n"
    
    else 
    
        cd $sdt && wget https://github.com/M4dGun/t-ui_themes/blob/main/Grid_theme/t-ui_grid.zip?raw=true  &>/dev/null ;
    
  fi
  printf "\nInstalling ." ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "."  ; sleep 0.5 ;printf "." 
  unzip -o  $sdt/t-ui_grid.zip -d $tui ; cd $tui/t-ui  && cp * $tui  ;

}
show(){
    printf "\n1.DRACULA_THEME\n2.Grid_theme\n"
}
version(){
	echo "version 0.0.2"
}
help_1(){
    printf "\n --show  = show themes\n --help = show this menu \n --version = show/check the version \n"
}
if [[ "$1" == "1" ]]; then
	install_1
elif [[ "$1" == "2" ]]; then
	install_2
elif [[ "$1" == "--show" ]]; then
	show
elif [[ "$1" == "--version" ]]; then
	version
elif [[ "$1" == "--help" ]]; then
help_1
else
	usage
fi
