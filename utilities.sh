#!/bin/bash

### screenbot ## utilities
### screenbot - gsettings wrapper for saving and remembering gnome settings
# https://github.com/SpaceisFake/screenbot
# screenbot--help

data="/home/archie/code/screenbot/scripts/screen_bot/screen_botv2.1/data.sh"
. $data

function SET_SCREEN()
	{

	# set wallpaper
	wallpaper=$screen[Wallpaper]
	gsettings set org.gnome.desktop.background picture-uri ${!wallpaper}

	# set gtk-theme, shell-theme,  and icons
	ICON_THEME=$screen[icon_theme]
	gsettings set org.gnome.desktop.interface icon-theme ${!ICON_THEME}
	GTK_THEME=$screen[gtk_theme]
	gsettings set org.gnome.desktop.interface gtk-theme ${!GTK_THEME}
	SHELL_THEME=$screen[shell_theme]
	gsettings set org.gnome.shell.extensions.user-theme name ${!SHELL_THEME}

	# print settings
	printf "\nshell: ${!SHELL_THEME}\ngtk: ${!GTK_THEME}\nicon: ${!ICON_THEME}\nwallpaper: ${!wallpaper}\n"

	}

function RANDOM_SCREEN()
	{
        #size=${#screen_list[@]}
				#random=$$$(date +%s)
				screen=${screen_list[$RANDOM % ${#screen_list[@]}]}

	}

function NEW_SCREEN()
	{
				Wallpaper=`gsettings get org.gnome.desktop.background picture-uri`
				icon_theme=`gsettings get org.gnome.desktop.interface icon-theme`
				gtk_theme=`gsettings get org.gnome.desktop.interface gtk-theme`
				shell_theme=`gsettings get org.gnome.shell.extensions.user-theme name`

				printf "\n
declare -A $screen
$screen[ID]=$screen
$screen[image_source]=#needed
$screen[Wallpaper]=$Wallpaper
$screen[gtk_theme]=$gtk_theme
$screen[shell_theme]=$shell_theme
$screen[icon_theme]=$icon_theme
"'[[ ${screen_list[@]} =~ (^|[[:space:]])'"$screen($|[[:space:]]) ]] || screen_list+=($screen)
" >> $data

}

### old code to keep


	# get profile
	#PROFILE=$(dconf dump /org/gnome/terminal/legacy/profiles:/ | grep -B 2 ${GOGH_THEME} | sed -n 1p)
	#PROFILE=${PROFILE:2:-1}
	#gsettings set org.gnome.Terminal.ProfilesList default $PROFILE
        # profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
        # profile=${profile:1:-1} # removes quotes

	# set $PS1 color
	# #export $PS1=$\PS1

	# set shell theme colors on/off, transparency, foreground, and background
	#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/ use-theme-colors $THEME_COLORS_T_F
	#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/ use-transparent-background $SHELL_TRANSPARENT_T_F
	#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/ background-transparency-percent $SHELL_TRANSPARENCY_PERCENTAGE
	#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/ background-color \"$BG_COLOR\"
	#gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${PROFILE}/ foreground-color \"$FG_COLOR\"


