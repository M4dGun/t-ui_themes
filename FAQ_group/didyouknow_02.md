## #02


### ---- ADD SHORTCUT TO WEBPAGES (by  codingotaku) ----

In normal launchers you can add shortcut to web pages easily  (which almost all browsers supports), and in T-UI?.<br>
<u>To do that in T-UI we need to exploit alias<u>

1) Create an alias to open web pages:
`alias --add browse am start -a android.intent.action.VIEW -d https://% --user 0 `

2) Now you can just add alias like
`alias --add ALIASname browse WEBpage`<br>
For example: `alias --add anilist browse anilist.co `


3) Now it will be sufficient to type `anilist` to open the website directly through the default browser  

**NOTE**<br>
<i>if you use http:// instead of https:// sometimes you don't have to type in the whole address (depends on browser),<i>
<i>and has some other profits you get. But I preffer https:// than http:// so I'm gonna leave it there.<i>

Enjoy
