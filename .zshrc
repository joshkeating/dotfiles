# ------------------- start oh-my-zsh block ------------------- #

# Path to oh-my-zsh installation.
export ZSH=/home/josh/.oh-my-zsh

# Set name of the theme to load. 
ZSH_THEME="josh-current"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins to load? (more plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# -------------------- end oh-my-zsh block -------------------- #


# ----------------- start custom config block ----------------- #

# Preferred editor for local and remote sessions
export EDITOR='vim'

# set mssql server path
export PATH="$PATH:/opt/mssql-tools/bin"

# export rust cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# set path for golang (for terminal execution)
GOPATH=$HOME

# setup ssh keys and start ssh-agent on login
SSH_ENV=$HOME/.ssh/environment

# start ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > ${SSH_ENV}
    echo "succeeded"
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

# Set personal aliases

alias ls='ls -l --color=auto'
alias stats='screenfetch'
alias run='rofi -show run'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'
alias logout='killall -u josh'
alias vim='gvim -v'
alias am='alsamixer'
alias service='systemctl --type=service'
alias cap='scrot -q 90 -s ~/Pictures/scrots/%b-%d-%r.png'
alias clch='sudo pacman -Sc'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Script calls
alias colors='~/Scripts/colors.sh'
alias lock='~/Scripts/lock.sh'
alias pipes='~/Scripts/pipes.sh'
alias cmon='~/Scripts/smart-connect-moniter.sh'
alias dmon='~/Scripts/disconnect-monitor.sh'
alias ram='~/Scripts/reset-amixer-levels.sh'
alias mnt='sudo ./Scripts/mount-usb-drive.sh'
alias umnt='sudo ./Scripts/umount-usb-drive.sh'

# git commands
alias gst='git status'
alias adda='git add .'
alias push='git push'
alias pull='git pull'
alias merge='git merge'
alias diff='git diff'

# sql server commands
alias sqlstart='sudo systemctl start mssql-server.service'
alias sqlstop='sudo systemctl stop mssql-server.service'
alias sqlst='sudo systemctl status mssql-server.service'

# deprecated
# alias light='~/Scripts/lightbg.sh'
# alias dark='~/Scripts/darkbg.sh'
# alias atu='ssh jfk8@klaatu.cs.washington.edu'
# alias startwifi='systemctl stop netctl-auto@wlp58s0.service'
# alias stopwifi='systemctl start netctl-auto@wlp58s0.service'
# alias syncsite='aws s3 sync ~/Code/joshuakeating.com_v2 s3://joshuakeating.com --exclude ".git/*" --exclude ".vscode/*" '


# ---------------- end custom config block ---------------- #
