## #02


### ---- ADD SHORTCUT TO WEBPAGES (by  codingotaku) ----

In normal launchers you can add shortcut to web pages easily  (which almost all browsers supports), and in T-UI?.<br>
<u>To do that in T-UI we need to exploit alias<u>

1) First step: create an alias to open web pages:<br>
`alias --add browse am start -a android.intent.action.VIEW -d https://% --user 0 `

2) Second and last step: now you can add an alias to open a specific web page. <br>In the example below I created an alias named COLORS to open the web page: htmlcolorcodes.com<br>
`alias --add colors browse htmlcolorcodes.com `

3) Now it will be sufficient to type `colors` to open the website directly through the default browser  

You can add as many web pages as you want, using this command:<br>
Example: `alias --add ALIASname browse WEBpage`<br>




**NOTE**<br>
<i>if you use http:// instead of https:// sometimes you don't have to type in the whole address (depends on browser),<i>
<i>and has some other profits you get. But I prefer https:// than http:// so I'm gonna leave it there.<i>

Enjoy
