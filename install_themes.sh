#!/bin/bash

### screenbot ## install
### screenbot - gsettings wrapper for saving and remembering gnome settings
# https://github.com/SpaceisFake/screenbot
# screenbot--help

: << 'EOF'
Required Dependencies:
	Arch;
		git,
		inkscape,
		sass,
		deepin-gtk-theme,
		numix-gtk-theme,
		gtk-engine-murrine,
		gtk-engines,
		sassc
EOF

#### Themes
sudo mkdir /tmp/screenbot/ && sudo chmod 777 /tmp/screenbot/
LOG="/tmp/screenbot/log.txt"
URL="https://github.com"

function GET_THEME() #args = theme account repo
{
	local THEME=$1
	local ACCOUNT=$2
	local REPO=$3
	local PREFIX=$4
	git clone $URL/$ACCOUNT/$REPO.git /tmp/screenbot/${THEME} && cd /tmp/screenbot/$THEME 2>$LOG
	pwd
	./autogen.sh $PREFIX 2>$LOG
	make 2>$LOG
	sudo make install 2>$LOG
}

# Evo-pop/Solus
# https://github.com/solus-project/evopop-gtk-theme
GET_THEME Evo-pop solus-project evopop-gtk-theme

# Paper
# https://github.com/snwh/paper-gtk-theme
# Dependencies automake
GET_THEME Paper snwh paper-gtk-theme

# Vertex
# https://github.com/horst3180/vertex-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
GET_THEME Vertex  horst3180 vertex-theme --prefix=/usr


# Arc-Flatabulous
# https://github.com/andreisergiu98/arc-flatabulous-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
GET_THEME Arc-Flatabulous andreisergiu98 arc-flatabulous-theme --prefix=/usr

# Arc-Red
# https://github.com/mclmza/arc-theme-Red
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
GET_THEME Arc-Red mclmza arc-theme-Red --prefix=/usr

# Arc
# https://github.com/horst3180/arc-theme
# Dependencies autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
GET_THEME Arc horst3180 arc-theme --prefix=/usr

# Greybird
# https://github.com/shimmerproject/Greybird
# Dependencies autoconf automake libgdk-pixbuf2.0-dev libglib2.0-bin sass
GET_THEME Greybird shimmerproject Greybird

# Adapta
# https://github.com/tista500/Adapta
# Dependencies autoconf automake inkscape libgdk-pixbuf2.0-dev libglib2.0-dev librsvg2-dev libsass0 libxml2-utils pkg-config sass
GET_THEME Adapta tista500 Adapta

# Adapta - Color Pack
# https://github.com/ivan-krasilnikov/adapta-gtk-theme-colorpack
# Dependencies autoconf automake inkscape libgdk-pixbuf2.0-dev libglib2.0-dev librsvg2-dev libsass0 libxml2-utils pkg-config sassc
GET_THEME Adapta-Colors-Pack ivan-krasilnikov adapta-gtk-theme-colorpack

# Vimix
# https://github.com/vinceliuice/vimix-gtk-themes
sudo git clone https://github.com/vinceliuice/vimix-gtk-themes /tmp/vimix-gtk-theme && cd /tmp/vimix-gtk-theme
./Vimix-installer


### NO LONGER SUPPORTED ### 

#### Scrape wallpapers from imgur album to /home/Pictures/screenbot_wallpapers/
#sudo mkdir -p /home/Pictures/screenbot_wallpapers/
#sudo chmod 777 /home/Pictures/screenbot_wallpapers/
#python3 << EOF
#import urllib.request
#wallpapers = {
#'Emerald_Forrest' : "https://imgur.com/g8Rzpcm.jpg",
#'Dusk_Mountains_Flat' : "https://i.imgur.com/Y97SMZH.jpg",
#'Saw_Mill_flat' : "https://i.imgur.com/zJfqHtj.jpg"
#}
#print ("initializing web-scraping")
#for key in wallpapers:
#	print ("retrieving wallpaper %s" % (key))
#	urllib.request.urlretrieve(wallpapers[key], "/home/Pictures/screenbot_wallpapers/%s.png" % (key))
#	print ("success")
#print ("scraping complete")
#EOF

#### Make a symbolic link for the run script
#sudo ln -s $PWD/screenbot /usr/local/bin/screenbot
