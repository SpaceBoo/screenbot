#!/bin/bash

#### Documentation
####Thanks goes too: 
# tliron  -install/gnome/themes
# https://github.com/tliron/install-gnome-themes/blob/master/install-gnome-themes
# Downright beautiful scripting, I think i got smarter just from reading this repo.



##NOTES:
#test --prefix=/usr
#setup log



#### Themes
LOG="/tmp/screenbot/log.txt"
URL="https://github.com"

function get_theme() #args = theme account repo   
{
	local THEME=$1
	local ACCOUNT=$2
	local REPO=$3
	local PREFIX=$4
	git clone $URL/$ACCOUNT/$REPO.git /tmp/${THEME} && cd /tmp/$THEME # 2>$LOG
	./autogen.sh $PREFIX#2>$LOG
	make #2>$LOG
	sudo make install #2>$LOG
}

# Evo-pop/Solus
# https://github.com/solus-project/evopop-gtk-theme
get_theme Evo-pop solus-project evopop-gtk-theme

# Paper
# https://github.com/snwh/paper-gtk-theme
# Dependencies automake
get_theme Paper snwh paper-gtk-theme

# Vertex
# https://github.com/horst3180/vertex-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
get_theme Vertex  horst3180 vertex-theme --prefix=/usr


# Arc-Flatabulous
# https://github.com/andreisergiu98/arc-flatabulous-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
get_theme Arc-Flatabulous andreisergiu98 arc-flatabulous-theme --prefix=/usr

# Arc-Red
# https://github.com/mclmza/arc-theme-Red
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
get_theme Arc-Red mclmza arc-theme-Red --prefix=/usr

# Arc
# https://github.com/horst3180/arc-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
get_theme Arc horst3180 arc-theme --prefix=/usr

# Greybird
# https://github.com/shimmerproject/Greybird
# Dependencies autoconf automake libgdk-pixbuf2.0-dev libglib2.0-bin sass
get_theme Greybird shimmerproject Greybird

# Adapta
# https://github.com/tista500/Adapta
# Dependencies autoconf automake inkscape libgdk-pixbuf2.0-dev libglib2.0-dev librsvg2-dev libsass0 libxml2-utils pkg-config sassc
get_theme Adapta tista500 Adapta



#### Scrape wallpapers from imgur album to /home/Pictures/screenbot_wallpapers/
sudo mkdir -p /home/Pictures/screenbot_wallpapers/
sudo chmod 777 /home/Pictures/screenbot_wallpapers/
python3 << EOF
import urllib.request
wallpapers = {
'screen-1' : "https://imgur.com/g8Rzpcm.jpg", 
'screen-2' : "https://i.imgur.com/Y97SMZH.jpg",  
'screen-3' : "https://i.imgur.com/zJfqHtj.jpg"
}
print ("initializing web-scraping")
for key in wallpapers:
	print ("retrieving wallpaper %s" % (key))
	urllib.request.urlretrieve(wallpapers[key], "/home/Pictures/screenbot_wallpapers/%s.png" % (key))
	print ("success")
print ("scraping complete")
EOF

#### Make a symbolic link for the run script
sudo ln -s $PWD/screenbot /usr/local/bin/screenbot
