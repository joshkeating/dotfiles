
function yt() {
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $1
}    

function yy() {
	mpv --really-quiet --autofit=40% --geometry=0:1 --ytdl --ytdl-format='mp4[height<=?720]' $1 &
}

