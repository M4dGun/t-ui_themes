#!/bin/sh
## T-ui Expert Theme Manager
## Authors  : Ema and Arun cs
## Mail    	: Arun: aruncs31sss@gmail.com
## Github  	: @M4dGun and @aruncs31s
## Telegram : @UnderTheGun1  and @killadinjan
## T-ui group: https://t.me/tuilauncher 
## #####  #  #  #####"
##   #    #  #    #
##   #    #  #    #   
##   #    ####  #####
######
tui=/storage/emulated/0/t-ui
sd=/storage/emulated/0
sdt=/storage/emulated/0/tui-themes_and_backup
timestamp=$(date +%Y%m%d%H%M)

PROGNAME=ttm
REMOTEHOST="https://github.com/M4dGun/t-ui_themes/raw/main"
THEME_LIST=("database/dracula.zip" "NetHunter/NetHunter.zip" "WallX_theme/WallX.zip" "Tomboy.girl_theme/tomboy.zip" "Grid_theme/t-ui_grid.zip")
SCRIPT_LINK=
######
theme_1=Dracula_V1
theme_2=NetHunter_V1
theme_3=WallX
theme_4=Tomboy_Girl
theme_5=Grid
theme_6=ff
######

print_header () {
	echo " T-ui Theme Manager"
	printf "\n  \n"
	printf "\n #####  #####   ##   ##"
    printf "\n   #      #     # # # #"
    printf "\n   #      #     #  #  #"
    printf "\n   #      #     #     #\n"
    printf "\n  \n"
}

print_installer () {
	sleep 1
	echo -ne '>>>>>>>                   [40%]\r'
	sleep 1
	echo -ne '>>>>>>>>>>>>>>            [60%]\r'
	sleep 1
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
	sleep 1
	echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
	echo -ne '\n'
}

show_help(){
	padding=-14
	print_header
	printf "%s\n" \
	    " USAGE: $PROGNAME [-h, --help] [-v, --version]"\
        "            [-l, --list] [-p, --preview]"\
        "            [-u, --update] [1 or 2 or 3...]"\
        "            [-b, --backup] [-r, --restore]"
		
    printf " \n"
    printf "  %${padding}s %s\n" \
	    "1 or 2 or 3..." "Install theme n.1 (or 2 or 3 etc)" \
        "-u, --update" "Update ttm script" \
        "-l, --list" "Show available themes" \
        "-p, --preview" "Screenshots of available themes" \
        "-b, --backup" "Backup current theme (tar format)" \
        "-r, --restore" "Restore previous saved theme" \
        "-h, --help" "Print this help message" \
        "-v, --version" "Print ttm script version"
        
        printf " \n"
    printf "  %${padding}s %s\n" \
        "Note: Update ttm to get the latest list" \
        "" "of available themes"
    exit 1
}


show_theme(){
	print_header
    printf "\n#########################\n --- THEMES AVAILABLE ---\n1.$theme_1\n2.$theme_2\n3.$theme_3\n4.$theme_4\n5.$theme_5\n#########################\n --- To download a theme just type:\ntui-theme number\n "

    exit 1
}

update_ttm(){
	
	if [[(-f /bin/curl )]]; then
        cd $sd && curl -LJO "$REMOTEHOST/$CHOSEN_THEME"
    else
        cd $sd && wget -c "$REMOTEHOST/$CHOSEN_THEME"	
	fi
	
    rm /location/of/old/script.sh
    mv script.sh /to/location/of/old/script

    exit 1
    }
    
backup1(){
	print_header
	
	if [[ -d $sdt ]]; then
	echo " tui-themes_and_backup dir alredy exist " ;
	else
	mkdir $sdt &>/dev/null
	fi		
	#zip -r $sdt/tui-backup.zip $tui
	tar cf $sdt/tui-backup.tar $tui 	
	
	if [ $? -ne '0' ]; then 
    printf ":: An error occurred!\n" \ ; exit 1
	fi
    printf ":: Success! Backup completed.\n" ; exit 0

        
}

version(){
	print_header
	echo " version 0.3 Beta"
	
	exit 1
}
	
	## source <(curl -s http://mywebsite.com/myscript.txt)
  

  
install_theme(){
	print_header
	
	if [[ -d $sdt ]]; then
	echo " tui-themes dir alredy exist " ;
	else
	mkdir $sdt &>/dev/null
	fi
	
	printf "\n Please wait..."
    

	# mkdir $sdt/$timestamp &>/dev/null
	# cp -R $tui $sdt/$timestamp &>/dev/null

	## BACKUP CURRENT THEME
	tar cf $sdt/tui-backup.tar $tui &>/dev/null
	printf "\n Backup completed \n" ; sleep 1.0
	
	printf "\nDownloading theme... Wait \n\n" ; sleep 1.0
		
	if [[(-f /bin/curl )]]; then
        cd $sdt && curl -LJO "$REMOTEHOST/$CHOSEN_THEME"
    else
        cd $sdt && wget -c "$REMOTEHOST/$CHOSEN_THEME"	
	fi
	
	printf "\n Download completed. \n" ; sleep 1.0

	printf "\n Installing... \n"
	
	print_installer
	printf " \n"
  	
	CHOSEN_THEME="${CHOSEN_THEME##*/}"
	unzip -o  $CHOSEN_THEME -d $tui ; cd $tui/t-ui  && cp -r * $tui  ;
	rm -r $tui/t-ui &>/dev/null

	printf "\n Theme installed! \n\n" ; sleep 1.0
	
	#make the script persistent across theme installations
	echo "ttm=sh /sdcard/t-ui/script/tui-theme.sh %" >> "/sdcard/t-ui/alias.txt"
	echo "ttm -p=search -u https://github.com/M4dGun/t-ui_themes" >> "/sdcard/t-ui/alias.txt"
	echo "ttm -preview=search -u https://github.com/M4dGun/t-ui_themes" >> "/sdcard/t-ui/alias.txt"
	
	printf "\n :: Check tui folder to use theme's wallpaper \n" ; sleep 1.0
	
	printf "\n :: Type "ttm -r" to restore your previous theme \n" ; sleep 1.0

	printf "\n :: Now type restart in t-ui. Cheers \n"
	
}


case "$1" in
    # This ensures that the users input must be valid.
    # You should expand this to each number in its own
    # line when the theme count goes up 10 or above.
    [12345])
	index=$(( $1 - 1))
	CHOSEN_THEME="${THEME_LIST[$index]}"
        ;;
    -l|--list|%)
        show_theme
        ;;
    -u|--update)
        update_ttm
        ;;        
    -v|--version)
        version
        ;;
    -b|--backup)
        backup1
        ;;    
    -r|--restore)
        restore
        ;;            
    -h|--help)
		show_help
        ;;
    *)
        printf "Invalid option. Type 'ttm -h' to show help\n"
        exit 1
        ;;
esac

install_theme # call the install function.
