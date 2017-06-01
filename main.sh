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

# Zsh options
source $HOME/.zsh/zshopts.sh

# Completion
source $HOME/.zsh/completion.sh

# Prompt
prompt pure

# Reverse search
bindkey -e

# Autosuggest
# source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# alias
source $HOME/.zsh/aliases.sh

### PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
