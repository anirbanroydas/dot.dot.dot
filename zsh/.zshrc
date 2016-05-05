 # Path to your oh-my-zsh installation.
export ZSH=/Users/Roy/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ardPower"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
#COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm.dd.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
## ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras git-flow git-prompt github brew brew-cask cp pip python sublime sudo supervisor tmux )

# User configuration

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH="/usr/local/bin:/usr/local/git/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin::/Library/TeX/texbin"
# export MANPATH="/usr/local/man:$MANPATH"


# Byobu Configuration 
export BYOBU_PREFIX=$(brew --prefix)


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias usb1='sudo mkdir /Volumes/usb1'
alias usb2='sudo mkdir /Volumes/usb2'
alias usb3='sudo mkdir /Volumes/usb3'

alias mount1='sudo mount -t ntfs-3g /dev/disk1s2 /Volumes/usb1'
alias mount2='sudo mount -t ntfs-3g /dev/disk2s2 /Volumes/usb2'

alias m1='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk1s2 /Volumes/usb1/'
alias m2='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk2s2 /Volumes/usb2/'
alias m3='sudo mount -t ntfs -o rw,auto,nobrowse /dev/disk3s2 /Volumes/usb3/'

alias um1='sudo umount /Volumes/usb1'
alias um2='sudo umount /Volumes/usb2'
alias um3='sudo umount /Volumes/usb3'

alias checkusb='ls /dev/ | grep disk'

####
# git aliases
#
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gpom='git push origin master'
alias grm='git rm'
alias gmv='git mv'
alias gb='git branch'
alias gl='git log'
alias gf='git fetch'
alias gpo='git push origin'
alias gpu='git pull'
alias gck='git checkout'
alias gm='git merge'


###
# powerline config
###
powerline-daemon -q
# Uncomment  the below line if you want to use the powerline-status theme for your zsh shel(oh-my-zsh) theme
# . /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

###
# Python Config
###
export PYTHONDONTWRITEBYTECODE=1



