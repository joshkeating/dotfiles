# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/josh/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="josh-current"

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

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# set mssql server path
export PATH="$PATH:/opt/mssql-tools/bin"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"
SSH_ENV=$HOME/.ssh/environment

# start ssh-agent
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

# set path for golang (for termial execution)
GOPATH=$HOME


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. 

alias ls='ls -l --color=auto'
alias colors='~/Scripts/colors.sh'
alias stats='screenfetch'
alias lock='~/Scripts/lock.sh'
alias run='rofi -show run'
alias pipes='~/Scripts/pipes.sh'
alias shutdown='sudo shutdown now'
alias reboot='sudo reboot now'
alias gst='git status'
alias adda='git add .'
alias push='git push'
alias pull='git pull'
alias merge='git merge'
alias diff='git diff'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias syncsite='aws s3 sync ~/Code/joshuakeating.com_v2 s3://joshuakeating.com --exclude ".git/*" --exclude ".vscode/*" '
alias mnt='sudo ./Scripts/mount-usb-drive.sh'
alias umnt='sudo ./Scripts/umount-usb-drive.sh'
alias light='~/Scripts/lightbg.sh'
alias dark='~/Scripts/darkbg.sh'
alias cmon='~/Scripts/connect-monitor.sh'
alias dmon='~/Scripts/disconnect-monitor.sh'
alias logout='killall -u josh'
alias am='alsamixer'
alias service='systemctl --type=service'
alias cap='scrot -q 90 -s ~/Pictures/scrots/%b-%d-%r.png'
alias atu='ssh jfk8@klaatu.cs.washington.edu'
alias clch='sudo pacman -Sc'
alias startwifi='systemctl stop netctl-auto@wlp58s0.service'
alias stopwifi='systemctl start netctl-auto@wlp58s0.service'


