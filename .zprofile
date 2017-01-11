
typeset -U path
path=(~/bin /other/things/in/path $path[@])


if [ -z "$DISPLAY" ] && [ "$(fgconsole)" -eq 1 ]; then
  exec startx
fi


