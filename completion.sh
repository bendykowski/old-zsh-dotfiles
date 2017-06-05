#!/usr/bin/env zsh

# Include zsh-users/zsh-completions
fpath=($HOME/.zsh/plugins/zsh-completions/src $HOME/.zsh/plugins/zsh-manydots-magic $fpath)

# Case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Process completion
zstyle ':completion:*:processes' command 'ps -au$USER'
zstyle ':completion:*:*:kill:*:processes' list-colors "=(#b) #([0-9]#)*=36=31"

# Zstyle
zstyle ':completion:*' completer _expand _complete _ignored _approximate _expand_alias
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:descriptions' format '%U%F{yellow}%d%f%u'
zstyle ':completion:*:*:git:*' script ~/.git-completion.sh

# Completion
autoload -U promptinit && promptinit
autoload -U compinit compdef && compinit

# Dots completion
autoload -Uz manydots-magic
manydots-magic