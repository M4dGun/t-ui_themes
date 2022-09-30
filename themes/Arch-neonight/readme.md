 # ARCH NEO-NIGHT
*- an alternative version to Arch Neofetch made by Aryan Solanki -*


<img src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neonight/1.jpg" data-canonical-src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neonight/1.jpg" width="300" />  <img src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neonight/2.jpg" data-canonical-src="https://github.com/M4dGun/t-ui_themes/blob/main/themes/Arch-neonight/2.jpg" width="300" /><br>
<br>


#### 📌 HOW TO INSTALL (manual method)
1) download zip file, unzip it and replace unzipped files in original T-UI folder (/storage/emulated/0/t-ui) 
2) restart tui(e) with `restart` command
3) now copy this entire command *(thanks to @solanki_ary13)*:<br>
`sed -i "s/✓/$(getprop | grep 'ro.product.brand' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/€/$(getprop | grep 'ro.product.model' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/¥/$(getprop | grep -w 'ro.build.version.release' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/¢/$(getprop | grep -w 'ro.soc.manufacturer' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/°/$(getprop | grep 'ro.soc.model' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml ; sed -i "s/∆/$(getprop | grep 'ro.crypto.state' | grep -o ':.*' | sed 's/[][]//g')/" t-ui/behavior.xml ; sed -i "s/π/$(uname -r | cut -f 1 -d "/")/" t-ui/behavior.xml ; sed -i "s/÷/$(getprop | grep 'ro.build.version.security_patch' | grep -o ':.*' | sed 's/[][]//g' | sed 's/://g')/" t-ui/behavior.xml`
4) paste it in t-ui(e), execute it and restart.
5) Your device informations (check status lines) should now all be up to date. If any of them are missing, update the information manually: open behavior.xml file and edit the affected parts
6) now you can also configure the weather: you can use GPS on or enter your location manually (in the second case go to point 6.1)<br>
6.1 Open behavior.xml file and edit `<weather_location value=""/>`: you can insert the ID of your country (check tui wiki) or your coords separated by a comma (lat,lon)<br>
7) save behavior.xml file and restart tui(e)
8) enjoy
