#!/usr/bin/python

import json

with open("/home/josh/.config/Google Play Music Desktop Player/json_store/playback.json") as data_file:    
    data = json.load(data_file)

is_playing = data["playing"]


artist_name = data["song"]["artist"]
song_title = data["song"]["title"]
print(artist_name, "-" ,song_title)





