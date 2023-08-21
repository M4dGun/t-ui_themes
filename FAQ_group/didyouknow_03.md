## #didyouknow-03


### ---- QUICKLY SEARCH SETTINGS IN XML FILES ----

Let's say you want to find which file a specific command belongs to or you want to know where all the color settings called xyz_color are.... <br>
You should open each XML file or search inside the wiki pages.... Nothing complicated, however, if you want to speed up the operation and - above all - you want to do everything via T-uie you can follow this simple guide.
<br><br>
## LOCATE ALIAS 

1) Add this simple alias to your list, type:

`alias --add locate grep -rni % t-ui/*`

2) Refresh or restart tuie.  

3) Now you can use the <b>locate</b> command!
<br><br>
#### HOW TO USE

1) It's very simple, just type: 
`locate STRING`

where STRING represents the search you want to do.

2) Let's take a concrete example.  You want to look for any setting that contains the word size (ie you want to know where all the settings are to change font size for any editable aspect of tuie).  

Then just type:
`locate size`

The result will be:

`$ locate size`
t-ui/behavior.xml:124:<tui_notification_lastcmds_size value="5"/>
t-ui/expert.xml:25:<custom_command_size value="12"/>
suggestions.xml:42:<suggestions_size value="15"/>
t-ui/ui.xml:55:<time_size value="11"/>
t-ui/ui.xml:56:<battery_size value="11"/>
<..... Etc etc etc ....>

3) Let's look at the first result:

t-ui/behavior.xml:124:<tui_notification_lastcmds_size value="5"/>

t-ui/behavior.xml = this indicates the file in which the setting is contained.

124 = represents the line in the file where the setting is present

<tui_notification_lastcmds_size value="5"/> = represents the setting we looked for, its full name and its value.

Typing `locate size` we have displayed every setting that contains that name.  

5) We can also use this alias in another way: if we already know the full name of the setting, we can search it to figure out which XML file it is linked to.

6) Example:
`locate overlay_color`

The result is:
t-ui/theme.xml:35:<overlay_color value="#00000000"/>

This means that the setting is contained in the theme.xml file (inside the t-ui folder), and exactly at line 35.

Enjoy
