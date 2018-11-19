export EDITOR=nano
export PATH=$PATH:$HOME/.cabal/bin
# export EDITOR="$HOME/bin/mate -w"

source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/ignore

# Bashmarks is a simple set of bash functions that allows you to bookmark
# folders in the command-line.
source ~/.bash/bookmarks

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

source ~/.bash/completions

# Git completion
# git show unstaged and staged symbol
GIT_PS1_SHOWDIRTYSTATE='true'
GIT_PS1_SHOWSTASHSTATE="show"
GIT_PS1_SHOWUNTRACKEDFILES="show"
GIT_PS1_SHOWUPSTREAM="auto"

# bash prompt
source ~/.bash/prompt

# bash extras
source ~/.bash/extras

# z - jump to folders
# https://github.com/rupa/z/raw/master/z.sh
source ~/z.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
