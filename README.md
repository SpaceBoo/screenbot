** This repo has not been updated since the author switched to OSX and is mostly for personal use ** 

# screenbot

Screenbot is a utility for saving, switching, and sharing gnome settings.

## Descriptiong

Screenbot stores gnome graphic interface settings including wallpaper choice, shell theme, icon set, and getk-theme in a data file that can be accessed, shared, saved, and re-loaded through the screenbot script. In this way, screenbot acts as a wrapper for storing, remembering, and sharing gsettings values.   

## Features

### Arguments

Screen settings can be saved, queried, or loaded using the arguments below

```bash
screenbot [options] <screen name>
options:
        [--list/-l]   -print a list of saved screens
        [--create/-c] <screen name>  -save your current settings as screen name
        [--random/-r] selects and loads a random saved screen
use:
        screenbot --create New_screen
        screenbot --random
        screenbot New_screen
        
```
### Installation

The installation.sh script automatically installs of a number of popular gnome themes including Paper, Vertex, Arc, Vimix, and Adapta from github to get you going. However, running this script may require that the dependencies for each theme be installed in advance. This includes git, inkscape, sass, sassc, and ruby.

### Data

The data.sh script declares a number of pre-made screen setting themes created by the author. These utilize the themes from the installation.sh script as well as a number of matching wallpapers. Automaticaly scraping the wallpapers from imgur is no longer supported, sorry.

# Required dependencies:
arch;
git,
python3,
gnome-tweak-tool,
gnome-common,
autoconf
