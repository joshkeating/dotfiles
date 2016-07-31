#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#----------------Alias Section----------------#

alias ls='ls --color=auto'
alias colors='./Scripts/colors.sh'

#---------------------------------------------#


# Set ls colors

LS_COLORS=$LS_COLORS:'di=34:' ; export LS_COLORS
