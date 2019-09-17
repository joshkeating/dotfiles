
function yt() {
    youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 $1
}    

function yy() {
	mpv --really-quiet --autofit=50% --geometry=0:1 --ytdl $1 </dev/null &>/dev/null &
}

