#!/usr/bin/python

# reads from the file that gpmdp writes the current song to

import json

with open("/home/josh/.config/Google Play Music Desktop Player/json_store/playback.json") as data_file:    
    data = json.load(data_file)

is_playing = data["playing"]
artist_name = data["song"]["artist"]
song_title = data["song"]["title"]
# print(is_playing)

if is_playing == False:
    print("")
else:
    print(artist_name, "-" ,song_title)







