#!/bin/bash

### screenbot
### screenbot - gsettings wrapper for saving and remembering gnome settings
# https://github.com/SpaceisFake/screenbot
# screenbot--help

#utilities="/home/archie/code/screenbot/scripts/screen_bot/screen_botv2.1/utilities.sh"
#data="/home/archie/code/screenbot/scripts/screen_bot/screen_botv2.1/data.sh"
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
utilities="$dir/utilities.sh"
data="$dir/data.sh"

. $utilities 
. $data 



case $1 in
	--list|-l)
		printf "${screen_list[*]}"
	;;

	-c|--create)
		[ -z "$2" ] && read -p "Screen ID: " screen || screen="$2"
		[[ ${screen_list[@]} =~ (^|[[:space:]])"$screen"($|[[:space:]]) ]] \
		&& printf "ID is already taken" \
		|| printf "Creating screen: $screen" \
		&& NEW_SCREEN
	;;

	--random|-r)
		RANDOM_SCREEN
		printf "$screen"
		SET_SCREEN
	;;

		--help|-h|"")
			printf "\
screenbot [options] <screen name>
options:
	[--list/-l]   -print a list of saved screens
	[--create/-c] <screen name>  -save your current settings as screen name
	[--random/-r] selects and loads a random saved screen
use:
	screenbot --create New_screen
	screenbot --random
	screenbot New_screen
"
	;;

	*)
		screen="${1#*=}"
    [[ ${screen_list[@]} =~ (^|[[:space:]])"$screen"($|[[:space:]]) ]] \
		&& SET_SCREEN
esac
DIR=/tmp/screenbot

