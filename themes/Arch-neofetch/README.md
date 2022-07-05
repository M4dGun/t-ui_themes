Theme creator's GitHub repository:  https://github.com/kiteshwar-pujara/t-ui 





### Update for Arch-neofetch theme.

⚠️ If you have customised the previous version of the theme and would like to update to this, just extract the zip in some other location and replace ui.xml and behavior.xml

<img src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neofetch/Arch_Neofetch_V2_preview.jpg" data-canonical-src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neofetch/Arch_Neofetch_V2_preview.jpg" width="300" />

Changelog: 

1) Fixed the gap between arch logo. Thanks to Ema (@UnderTheGun1)

2) A single command now automatically updates the information according to your device. Just copy the above command and paste it in your t-ui, run it and restart t-ui and it should update the information according to your device automatically:


`sed -i "s/✓/$(getprop | grep 'ro.product.brand' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/€/$(getprop | grep 'ro.product.model' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/¥/$(getprop | grep -w 'ro.build.version.release' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/¢/$(getprop | grep -w 'ro.soc.manufacturer' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/°/$(getprop | grep 'ro.soc.model' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/∆/$(getprop | grep 'ro.crypto.state' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/π/$(uname -r | cut -f 1 -d "/")/" t-ui/behavior.xml ; sed -i "s/÷/$(getprop | grep 'ro.build.version.security_patch' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml`





