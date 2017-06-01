#!/usr/bin/env zsh

# Common ENV variables
export VISUAL='nvim'
export EDITOR='$VISUAL'

# Fix Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History
export HISTSIZE=500000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

source ~/.zsh/zshopts.sh

# case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# process completion
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# zstyle
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
zstyle ':completion:*:*:git:*' script ~/.git-completion.sh

# Functions Autoloading
fpath=(~/.zsh $fpath)

# Completion
autoload -U promptinit && promptinit
autoload -U compinit compdef && compinit

# Prompt
prompt pure

# Reverse search
bindkey -e

# Autosuggest
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias
source ~/.zsh/aliases.sh

### PATH
export PATH=/usr/local/bin:/usr/sbin:/sbin:/usr/bin:/bin
