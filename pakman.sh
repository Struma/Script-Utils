#!/bin/sh

#This is an mkchromecast script that cast the david Pakman Show to your tv.
#He's ok, run everyday at 4:15pm EST
#By Struma - github.com/Struma 2018
#Url Template: http://traffic.libsyn.com/davidpakman/davidpakmanshow-2018-08-24.mp3 

dater=$( date +%Y-%m-%d  )
pakman_url="http://traffic.libsyn.com/davidpakman/davidpakmanshow-"
endr=".mp3"
final_url="$pakman_url$dater$endr"
#mkchromecast is great, throw in the --control option for vol control
mkchromecast --source-url $final_url --control 

