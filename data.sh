#!/bin/bash

### screenbot ## data - pre-mades
### screenbot - gsettings wrapper for saving and remembering gnome settings
# https://github.com/SpaceisFake/screenbot
# screenbot--help


### THIS IS MOSTLY FOR EXAMPLE PURPOSES AND FOR PERSONAL USE. TO USE YOU MUST SOURCE YOUR OWN WALLPAPERS ###


declare -a screen_list
image_directory="/home/Pictures/screenbot_wallpapers"

dir=/home/archie/code/screenbot/scripts/screen_bot/screen_botv2.1
. $dir/user_made.data

declare -A Emerald_Waves
Emerald_Waves[ID]=Emerald_Waves
Emerald_Waves[image_source]='https://whvn.cc/668278'
Emerald_Waves[Wallpaper]=file://$image_directory/Emerald_Waves
Emerald_Waves[gtk_theme]=deepin                #ALT: deepin
Emerald_Waves[shell_theme]=deepin-dark
Emerald_Waves[icon_theme]=Sea
[[ ${screen_list[@]} =~ (^|[[:space:]])"Emerald_Waves"($|[[:space:]]) ]] || screen_list+=("Emerald_Waves")

declare -A Arch_Colors
Arch_Colors[ID]=Arch_Colors
Arch_Colors[image_source]='https://whvn.cc/218210'
Arch_Colors[Wallpaper]=file://$image_directory/Arch_colors
Arch_Colors[gtk_theme]=EvoPop-Azure                #ALT: deepin
Arch_Colors[shell_theme]=Greybird
Arch_Colors[icon_theme]=Obsidian-Teal
[[ ${screen_list[@]} =~ (^|[[:space:]])"Arch_Colors"($|[[:space:]]) ]] || screen_list+=("Arch_Colors")


declare -A Placid_Forrest
Placid_Forrest[ID]=Placid_Forrest
Placid_Forrest[image_source]='https://whvn.cc/671069'
Placid_Forrest[Wallpaper]=file://$image_directory/Placid_Forrest
Placid_Forrest[gtk_theme]=Numix                #ALT: Arc-Red-Darker, deepin
Placid_Forrest[shell_theme]=deepin-dark
Placid_Forrest[icon_theme]=deepin                  #TBD
[[ ${screen_list[@]} =~ (^|[[:space:]])"Placid_Forrest"($|[[:space:]]) ]] || screen_list+=("Placid_Forrest")

declare -A Piercing_Shot
Piercing_Shot[ID]=Piercing_Shot
Piercing_Shot[image_source]='https://whvn.cc/614370'
Piercing_Shot[Wallpaper]=file://$image_directory/Piercing_Shot
Piercing_Shot[gtk_theme]=EvoPop       						#ALT: Flat-Remix
Piercing_Shot[shell_theme]=EvoPop-Azure
Piercing_Shot[icon_theme]=deepin                  #TBD
[[ ${screen_list[@]} =~ (^|[[:space:]])"Piercing_Shot"($|[[:space:]]) ]] || screen_list+=("Piercing_Shot")


declare -A Geo_Bear
Geo_Bear[ID]=Geo_Bear
Geo_Bear[image_source]=https://alpha.wallhaven.cc/wallpaper/637632
Geo_Bear[Wallpaper]='file:///home/archie/Downloads/wallhaven-637632_1920x1080.png'
Geo_Bear[gtk_theme]='Adapta-Pink-Nokto-Eta'
Geo_Bear[icon_theme]='Flat-Remix'
Geo_Bear[shell_theme]='Adapta-Purple'
[[ ${screen_list[@]} =~ (^|[[:space:]])"Geo_Bear"($|[[:space:]]) ]] || screen_list+=("Geo_Bear")

declare -A Rainbow_Splash
Rainbow_Splash[ID]=Rainbow_Splash
Rainbow_Splash[image_source]=https://alpha.wallhaven.cc/wallpaper/670785
Rainbow_Splash[Wallpaper]='file:///home/archie/Downloads/wallhaven-670785_1920x1080.png'
Rainbow_Splash[gtk_theme]='Adapta-Orange'
Rainbow_Splash[shell_theme]='Adapta-Purple'
Rainbow_Splash[icon_theme]='Papirus-Adapta'
[[ ${screen_list[@]} =~ (^|[[:space:]])"Rainbow_Splash"($|[[:space:]]) ]] || screen_list+=("Rainbow_Splash")


declare -A Lucky
Lucky[ID]=Lucky
Lucky[image_source]=#needed
Lucky[Wallpaper]='file:///home/archie/Downloads/20171206_155827.jpg'
Lucky[gtk_theme]='EvoPop'
Lucky[shell_theme]='deepin-dark'
Lucky[icon_theme]='Oxygen_Yellow'
[[ ${screen_list[@]} =~ (^|[[:space:]])Lucky($|[[:space:]]) ]] || screen_list+=(Lucky)


declare -A Dusklit_Iceberg
Dusklit_Iceberg[ID]=Dusklit_Iceberg
Dusklit_Iceberg[image_source]=https://alpha.wallhaven.cc/wallpaper/680441
Dusklit_Iceberg[Wallpaper]='file:///home/archie/Downloads/wallhaven-680441_1920x1080(1).png'
Dusklit_Iceberg[gtk_theme]='Numix'
Dusklit_Iceberg[shell_theme]='Paper'
Dusklit_Iceberg[icon_theme]='Obsidian-Red'
[[ ${screen_list[@]} =~ (^|[[:space:]])Dusklit_Iceberg($|[[:space:]]) ]] || screen_list+=(Dusklit_Iceberg)


declare -A Science_is_FUN
Science_is_FUN[ID]=Science_is_FUN
Science_is_FUN[image_source]=https://alpha.wallhaven.cc/wallpaper/177752
Science_is_FUN[Wallpaper]='file:///home/archie/Downloads/wallhaven-177752_1920x1080.png'
Science_is_FUN[gtk_theme]='Numix'
Science_is_FUN[shell_theme]='Vertex'
Science_is_FUN[icon_theme]='Dex_KDE_Green'
[[ ${screen_list[@]} =~ (^|[[:space:]])Science_is_FUN($|[[:space:]]) ]] || screen_list+=(Science_is_FUN)


declare -A Hippie_Tentacles
Hippie_Tentacles[ID]=Hippie_Tentacles
Hippie_Tentacles[image_source]=https://alpha.wallhaven.cc/wallpaper/135765
Hippie_Tentacles[Wallpaper]='file:///home/archie/Downloads/wallhaven-135765_1920x1080.png'
Hippie_Tentacles[gtk_theme]='Adapta-Lime-Nokto-Eta'
Hippie_Tentacles[shell_theme]='Adapta-Lime-Nokto-Eta'
Hippie_Tentacles[icon_theme]='DamaDamas-icon-theme'
[[ ${screen_list[@]} =~ (^|[[:space:]])Hippie_Tentacles($|[[:space:]]) ]] || screen_list+=(Hippie_Tentacles)


declare -A Arch_Colors_Johns_mix
Arch_Colors_Johns_mix[ID]=Arch_Colors_Johns_mix
Arch_Colors_Johns_mix[image_source]=#needed
Arch_Colors_Johns_mix[Wallpaper]='file:///home/Pictures/screenbot_wallpapers/Arch_colors'
Arch_Colors_Johns_mix[gtk_theme]='Paper'
Arch_Colors_Johns_mix[shell_theme]='Greybird'
Arch_Colors_Johns_mix[icon_theme]='DamaDamas-icon-theme'
[[ ${screen_list[@]} =~ (^|[[:space:]])Arch_Colors_Johns_mix($|[[:space:]]) ]] || screen_list+=(Arch_Colors_Johns_mix)


declare -A New_Screen
New_Screen[ID]=New_Screen
New_Screen[image_source]=#needed
New_Screen[Wallpaper]='file:///home/Pictures/screenbot_wallpapers/Placid_Forrest'
New_Screen[gtk_theme]='Adapta-LightGreen-Nokto-Eta'
New_Screen[shell_theme]='Paper'
New_Screen[icon_theme]='KDE_Classic'
[[ ${screen_list[@]} =~ (^|[[:space:]])New_Screen($|[[:space:]]) ]] || screen_list+=(New_Screen)


declare -A new111
new111[ID]=new111
new111[image_source]=#needed
new111[Wallpaper]='file:///usr/share/backgrounds/gnome/ColdWarm.jpg'
new111[gtk_theme]='EvoPop-Azure'
new111[shell_theme]='Greybird'
new111[icon_theme]='Obsidian-Teal'
[[ ${screen_list[@]} =~ (^|[[:space:]])new111($|[[:space:]]) ]] || screen_list+=(new111)


declare -A Autumn_cabin
Autumn_cabin[ID]=Autumn_cabin
Autumn_cabin[image_source]=#needed
Autumn_cabin[Wallpaper]='file:///home/archie/Downloads/wallhaven-475015_1920x1080.png'
Autumn_cabin[gtk_theme]='Adapta-Orange-Nokto-Eta'
Autumn_cabin[shell_theme]='Adapta-Orange-Nokto-Eta'
Autumn_cabin[icon_theme]='Obsidian-Amber-SemiLight'
[[ ${screen_list[@]} =~ (^|[[:space:]])Autumn_cabin($|[[:space:]]) ]] || screen_list+=(Autumn_cabin)
