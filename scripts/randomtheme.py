#!/usr/bin/python3
import subprocess
from random import *
numberofscreens = 3
random = (randint(1, numberofscreens))
randomscreen = ("screen-%s" % (random))
subprocess.call('/usr/local/bin/screenbot/screens/%s' % (randomscreen))
print (randomscreen)

