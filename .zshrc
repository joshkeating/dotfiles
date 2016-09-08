# zsh configuration
 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
zstyle :compinstall filename '/home/josh/.zshrc'
autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit

#----------------Alias Section----------------#

alias ls='ls -l --color=auto'
alias colors='./Scripts/colors.sh'
alias stats='screenfetch'
alias lock='/home/josh/Scripts/lock.sh'
alias run='rofi -show run'
alias pipes='./Scripts/pipes.sh'
alias shutdown='sudo shutdown now'
alias restart='sudo restart now'


# Set ls colors
LS_COLORS=$LS_COLORS:'di=34:' ; export LS_COLORS

# Set editor
export VISUAL=vim
export EDITOR="$VISUAL"

ttyctl -f
