# zsh configuration file
 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/josh/.zshrc'
autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit

# Alias Section
alias ls='ls -l --color=auto'
alias colors='./Scripts/colors.sh'
alias stats='screenfetch'
alias lock='/home/josh/Scripts/lock.sh'
alias run='rofi -show run'
alias pipes='./Scripts/pipes.sh'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'
alias wifi='sudo wifi-menu'

# Set ls colors
LS_COLORS=$LS_COLORS:'di=34:' ; export LS_COLORS

# Set editor
export VISUAL=vim
export EDITOR="$VISUAL"

ttyctl -f

# Powerline stuff
powerline-daemon -q
if [[ -r /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python3.5/site-packages/powerline/bindings/zsh/powerline.zsh
fi

