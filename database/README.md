### How download themes directly from TUI
(Work In Progress...)

1) Create a "THEMES" folder inside t-ui/ directory where you can download themes, type: <br>
`cd /storage/emulated/0/t-ui && mkdir THEMES && cd /storage/emulated/0`

2) Add an alias (called **/themes**) to download themes without typing the full URL, type:<br>
`alias -add /themes cd /storage/emulated/0/t-ui/THEMES && curl -LJO https://github.com/M4dGun/t-ui_themes/raw/main/database/% && cd /storage/emulated/0/`

3) Download database of available themes:
 `cd /storage/emulated/0/t-ui/THEMES && curl -LJO https://github.com/M4dGun/t-ui_themes/raw/main/database/db && cd /storage/emulated/0/`

4) Add another alias to display available themes:<br>
`alias -add /themes_list cat /storage/emulated/0/t-ui/THEMES/db`

5) Refresh T-UI:
`refresh`

6) Now you have 2 new aliases: /themes and /themes_list: with the second one you can display all available themes in this repository

[....WIP....]
