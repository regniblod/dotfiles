# Path to your oh-my-zsh installation.
export ZSH="/home/amontanez/.oh-my-zsh"
ZSH_THEME=""

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git colored-man-pages colorize cp extract safe-paste docker zsh-autosuggestions zsh-syntax-highlighting vi-mode)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

# Enable vi mode
bindkey -v

path+=~/.local/bin
path+=~/google-cloud-sdk/bin
path+=~/scripts

alias dps='docker ps --format "table {{.Names}}\t{{.Ports}}" | sed 1d | sort'
alias python=python3
alias installed-pkgs='comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n "s/^Package: //p" | sort -u)'

