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
alias wi='sudo wifi-menu'
alias clch='sudo pacman -Sc'
alias gst="git status"
alias status="git status"
alias commit="git commit"
alias push="git push"
alias pull="git pull"
alias merge="git merge"
alias ranger='ranger --choosedir=$HOME/rangerdir; LASTDIR=`cat $HOME/rangerdir`; cd "$LASTDIR"'
# this is slightly disgusting
alias rw='sudo netctl restart wlp58s0-University\ of\ Washington'

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

# Github ssh stuff
SSH_ENV=$HOME/.ssh/environment

# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo succeeded
    chmod 600 ${SSH_ENV}
    . ${SSH_ENV} > /dev/null
    /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
     . ${SSH_ENV} > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

