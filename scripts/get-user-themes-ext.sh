#!/bin/bash

####GET THE USER THEMES EXTENSION
#get the shell version
Shell_Version=`gnome-shell --version | cut -d' ' -f3`
echo "parameters"
#download extensions parameters into /tmp/user-themes-parameters
wget --header='Accept-Encoding:none' -O "/tmp/user-themes-parameters" "https://extensions.gnome.org/extension-info/?pk=19&shell_version=${Shell_Version}"

#get Download_URL and Extension_UUID from /tmp/user-themes-parameters using sed
#need to change from ` to $() ?
Download_URL=`sed 's/^.*download_url[\": ]*\([^\"]*\).*$/\1/' "/tmp/user-themes-parameters"`
Extension_UUID=`sed 's/^.*uuid[\": ]*\([^\"]*\).*$/\1/' /tmp/user-themes-parameters`

printf "\n\nDownloadURL : ${Download_URL}"
printf "ExtensionUUID : ${Extension_UUID}\n\n"

#Download the extension to /tmp/user-themes-extension
wget --header='Accept-Encoding:none' -O "/usr/local/share/gnome-shell/extensions/${Extebsuib_UUID}" "https://extensions.gnome.org${Download_URL}"

#put the extension in the correct location
#mv /tmp/user-themes-extension /usr/local/share/gnome-shell/extensions/${Extension_UUID}

#restart-gnome
read -p "You will need to restart gnome in order for changes to take place. Would you like to restart now? (y/n) : " restart
if [ $restart = "y" ]; then
	sudo killall -1 gnome-shell
fi
	              
###code to keep
#/usr/local/share/gnome-shell/extensions
#mkdir -p "$HOME/.local/share/gnome-shell/extensions/${Extension_UUID}"
#for zip files
#sudo unzip -op /tmp/user-themes -d "/usr/local/share/gnome-shell/extensions/${Extension_UUID}"

###notes:
#combine wget and mv commands?
