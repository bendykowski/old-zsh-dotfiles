#!/usr/bin/env zsh

# Common ENV variables
export VISUAL='nvim'
export EDITOR='$VISUAL'

# Fix Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Welcome message
source $HOME/.zsh/welcome.sh

# Zsh options
source $HOME/.zsh/zshopts.sh

# Completion
source $HOME/.zsh/completion.sh

# Prompt
prompt pure

# Autosuggest
# source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
source $HOME/.zsh/aliases.sh

# History
source $HOME/.zsh/history.sh

# Z
. `brew --prefix`/etc/profile.d/z.sh

### PATH
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
