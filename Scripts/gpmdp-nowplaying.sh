#!/bin/bash

# reads json file that gpmdp creates
# grabs the artist and title keys if the song is currently playing

isplaying=$( sed -n 's/.*"playing": \(.*\),/\1/p' ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json )

if [ "$isplaying" == "true" ]; then
	title=$( sed -n 's/.*"title": "\(.*\)",/\1/p' ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json )
	artist=$( sed -n 's/.*"artist": "\(.*\)",/\1/p' ~/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json )
	echo "$artist - $title"
else
	echo ""
fi

