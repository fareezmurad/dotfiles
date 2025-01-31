# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Set the prompt
# PROMPT='%B%F{#FF55FF}%m%F{#FFFFFF}:%F{#55FFFF}%~%f%b%# '

# Set steady underline cursor
echo -ne "\e[4 q"

# Enable command auto-completion
autoload -Uz compinit
compinit

# Enable command correction
setopt correct

# Enable history sharing across terminals
setopt share_history

# Disable case sensitivity for file path globbing and pattern matching
setopt no_case_glob
setopt no_case_match

# Set history file size
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Prevent duplicate commands in history
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Add custom aliases
alias ..='cd ..'
alias ...='cd ~/'
alias c='clear'
alias update='sudo apt update && sudo apt upgrade -y'
alias ll='ls -lah'
alias gs='git status'
alias gb='git branch'
alias gco='git checkout'
alias gaa='git add --all'
alias omp-themes='cd ~/.cache/oh-my-posh/themes'

# Set the default editor
export EDITOR=vim

# Add custom path
export PATH=$PATH:~/bin

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/minimalistic.toml)"
eval "$(zoxide init --cmd cd zsh)"
