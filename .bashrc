#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#----------------Alias Section----------------#

alias ls='ls -l --color=auto'
alias colors='./Scripts/colors.sh'
alias stats='screenfetch'
alias lock='/home/josh/Scripts/lock.sh'
alias run='rofi -show run'


# Set ls colors
LS_COLORS=$LS_COLORS:'di=34:' ; export LS_COLORS

