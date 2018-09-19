#!/bin/sh


#this is a pakman script that plays his shit from a script
# http://traffic.libsyn.com/davidpakman/davidpakmanshow-2018-08-24.mp3 
dater=$( date +%Y-%m-%d  )
pakman_url="http://traffic.libsyn.com/davidpakman/davidpakmanshow-"
endr=".mp3"
final_url="$pakman_url$dater$endr"
mkchromecast --source-url $final_url --control 
#echo $final_url
