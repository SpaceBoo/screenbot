#!/bin/bash
#### Documentation : 

# This script attempts to make handling installing dependencies easier, a messy task. 
# The Dependency list contains the correct dependencies for both rpm and deb style linuxes as of 3/1/2018.
# If problems arise, or if you use a linux distrobution other than an rpm or deb style linux,
# you will need to install the correct dependencies manually. These can be found on the git-hub page.

#### Utilities

function Requirements()
{
	DEPENDENCIES="${DEPENDENCIES} $@"
}

function Debian_Requirements()
{
	DEBIAN_DEPENDENCIES="$DEPENDENCIES $DEBIAN_DEPENDENCIES $@"
}

function RPM_Requirements()
{
	RPM_DEPENDENCIES="$DEPENDENCIES $RPM_DEPENDENCIES $@"
}

#### Dependency List : To edit the script, simply comment the Theme that you do not want to install to make sure only neccessary dependencies are installed.

# Script
Requirements git gnome-tweak-tool gnome-common python3

# Numix
Debian_Requirements numix-gtk-theme numix-icon-theme numix-icon-theme-circle
RPM_Requirements numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Vertex
Debian_Requirements autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
RPM_Requirements autoconf automake gtk3-devel gtk-murrine-engine pkconfig

# Arc-Flatabulous
Debian_Requirements autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
RPM_Requirements autoconf automake gtk3-devel gtk-murrine-engine pkconfig

# Arc-Red
Debian_Requirements autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
RPM_Requirements autoconf automake gtk3-devel gtk-murrine-engine pkconfig

# Arc
Debian_Requirements autoconf automake pkg-config libgtk-3-dev gtk2-engines-murrine
RPM_Requirements autoconf automake gtk3-devel gtk-murrine-engine pkconfig

# Greybird
Debian_Requirements autoconf automake libgdk-pixbuf2.0-dev libglib2.0-bin sass
RPM_Requirements autoconf automake gdk-pixbuf2-xlib glib2-devel sass pkconfig

# Adapta
Debian_Requirements autoconf automake inkscape libgdk-pixbuf2.0-dev libglib2.0-dev librsvg2-dev libsass0 libxml2-utils pkg-config sassc
RPM_Requirements autoconf automake inkscape gdk-pixbuf2-xlib glib2-devel librsvg2-devel libxml2-devel sassc redhat-rpm-config

#### Interactive

read -p "Are you using a RPM (Fedora, RHEL, Cent-OS) or Debian (Mint, Ubuntu, Peppermint) based linux? (rpm/deb) : " DISTROBUTION

case $DISTROBUTION in
	rpm|RPM)
		RPM_DEPENDENCIES=$(echo "$RPM_DEPENDENCIES" | awk '{for (i=1;i<=NF;i++) if (!a[$i]++) printf("%s%s",$i,FS)}{printf("\n")}')
		sudo dnf install $RPM_DEPENDENCIES
		gem install sass
		;;
	deb|DEB|Debian|debian)
		Debian_Dependencies=$(echo "$DEPENDENCIES" | awk '{for (i=1;i<=NF;i++) if (!a[$i]++) printf("%s%s",$i,FS)}{printf("\n")}')
		sudo apt install $DEBIAN_DEPENDENCIES
		gem install sass
		;;
esac	
		


