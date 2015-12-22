# Path to your oh-my-zsh installation.
export ZSH=/home/bradmiller/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="pygmalion"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git sublime github)

# User configuration

export PATH="/home/bradmiller/bin:/home/bradmiller/.composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/share/keys"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# config stuff
alias zshrc="vim ~/.zshrc"
alias ohmyzshrc="vim ~/.oh-my-zsh"
alias vimrc="vim ~/.vimrc"
alias rclua="vim ~/.config/awesome/rc.lua"
#
#vagrant stuff
alias vd="vagrant destroy"
alias vu="vagrant up"
alias vs="vagrant ssh"

alias vmatrix="cd ~/Vagrant\ Projects/Matrix"
alias vmatrixssh="cd ~/Vagrant\ Projects/Matrix && vagrant ssh"

alias vgjd="cd ~/Vagrant\ Projects/gjd/brad"
alias vgjdssh="cd ~/Vagrant\ Projects/gjd/brad && vagrant ssh"

alias vusp="cd ~/Vagrant\ Projects/Upskill"
alias vuspssh="cd ~/Vagrant\ Projects/Upskill && vagrant ssh"

alias musp="cd /mnt/share/data/usptools/usp"
alias muspssh="connect hnuspdev"

alias vuspgitagg="cd ~/Vagrant\ Projects/Upskill/src && gitagg"
alias vuspgitfet="cd ~/Vagrant\ Projects/Upskill/src && gitfet"

#codeception stuff
alias cc="codecept"

#misc stuff
alias gsc="gnome-screensaver-command -l"

#tmux stuff
alias tks="tmux kill-server"
alias rs="tmux rename-session"

alias mygjd="cd /mnt/share/data/feynman/websites/gjd/brad"
path+=vendor/bin/

function gitagg() {
    for i in * ; do cd $i; echo $i ; git describe --dirty --all ; echo '_____________________'; cd .. ; done 
}
function gitfet() {
    for i in * ; do cd $i; echo $i ; git fetch bitbucket ; echo '______________________'; cd .. ; done 
}
