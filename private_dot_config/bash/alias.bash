#!/bin/bash

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories

# Tree
if [ ! -x "$(which tree)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# GIT

# Aliases
alias gap='git add -p'
alias gs='git status'
alias gl='git pull'
alias gpu='git push'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gg='git grep'
alias gst='git diff main --compact-summary'
alias gca='git commit --amend'

# Devenv
alias devenv='tmuxinator start -p gitpod/.tmuxinator.yml'

alias update='cd backend && bin/update && cd .. && make session.backend'
alias force-update='cd backend && bin/rails db:do_reset && cd .. && make session.backend'
