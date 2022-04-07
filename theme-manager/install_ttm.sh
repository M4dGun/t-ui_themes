#!/bin/sh
## T-ui Theme Manager Installer
## Author   : Ema
## Github   : @M4dGun
## Telegram : @UnderTheGun1
## T-ui group: https://t.me/tuilauncher
##
## #####  #  #  #####"
##   #    #  #    #
##   #    #  #    #   
##   #    ####  #####
##
######
PROGNAME=ttm
FILENAME=theme-manager.sh

tui=/storage/emulated/0/t-ui
sd=/storage/emulated/0
sdt=/storage/emulated/0/tui-themes_and_backup

REMOTEHOST="https://github.com/M4dGun/t-ui_themes/raw/main"
SCRIPT_LINK="https://raw.githubusercontent.com/M4dGun/t-ui_themes/main/theme-manager/theme-manager.sh"

ALIASTXT="$tui/alias.txt"


	echo " T-ui Theme Manager Installer"
	printf "\n \n Installing ttm, please wait......\n \n" ; sleep 1.0

	
	if [[(-f /bin/curl )]]; then
        cd $tui && curl -L $SCRIPT_LINK -o $tui/$FILENAME
    else
        cd $tui && wget -c $SCRIPT_LINK
	fi

   rm $sd/$FILENAME &>/dev/null
   cd $tui && mv $FILENAME $sd/$FILENAME


	# Test if ttm alias already exist ##thank you @deadrabbit404
	grep "^ttm" $ALIASTXT >/dev/null 2>&1
	if [ $? -ne 0 ]
	then
		# Test if the file has no EOL, then print a blank line.
		[ -n "`tail -c 1 $ALIASTXT`" ] && echo >> $ALIASTXT 
		echo "ttm=sh $sd/$FILENAME %" >> $ALIASTXT
		echo "ttm -p=search -u https://github.com/M4dGun/t-ui_themes" >> $ALIASTXT
	else
		# This means the alias already exists.
		# Replace whatever value assigned to the alias
		# with a new one that points to the ttm script.
		#sed -i "s#\(^ttm=\).*\$#\1sh $SCRIPTDIR/$SCRIPT %#" $ALIASTXT
		#sed -i "s#\(^ttm -p=\).*\$#\1search -u https://github.com/M4dGun/t-ui_themes#" $ALIASTXT
		echo " Alias already present, nothing to change "
	fi


sleep 1
echo ":: ttm installed. Please restart or refresh t-ui. Enjoy"

