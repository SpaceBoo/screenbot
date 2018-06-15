#!/usr/bin/python3
import urllib.request

wallpapers = {1 : "https://imgur.com/g8Rzpcm.jpg", 2 : "https://i.imgur.com/Y97SMZH.jpg"  , 3 : "https://i.imgur.com/zJfqHtj.jpg"}
for key in wallpapers:
    print ("retrieving wallpaper %s" % (key))
    urllib.request.urlretrieve(wallpapers[key], "/usr/local/bin/screenbot/wallpapers/%s.png" % (key))
    print ("success")
print ("complete")
