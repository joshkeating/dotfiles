#!/usr/bin/env python
# this script scrapes NP data from GPMDP

import json
import os

play="play"
pause="pause"
stop="stop"
home=os.path.expanduser('~')
gpmdp_json='/home/josh/.config/Google Play Music Desktop Player/json_store/playback.json'
cache_file='/home/josh/.config/i3/.nowplaying-cache'

# try:
#     mtt = os.path.getmtime(gpmdp_json)
#     if (time.time() - mtt) > 300:
#         raise Exception('old file')
#     data = open(gpmdp_json, 'r')
#     j = json.load(data)
#     data.close()
# except:
#     #i.e. if the json is currently being update (and thus was read malformed)
#     if os.path.isfile(cache_file):
#         mt = os.path.getmtime(cache_file)
#         cache = open(cache_file, 'r+')
#         if (time.time() - mt) > 300:
#             cache.truncate()
#             cache.write(stop+" Not Playing")
#             cache.seek(0)
#         print(cache.read())
#         exit()

data = open(gpmdp_json, 'r')
j = json.load(data)


# make the str
if j['playing']:
    str=play+" "+j['song']['artist']+" - "+j['song']['title']
else:
    if j['song']['title'] == None:
        str=stop+" Not Playing"
    else:
        str=pause+" "+j['song']['artist']+" - "+j['song']['title']

# cache it and print it
cache = open(cache_file, 'w')
cache.write(str)
print(str)
