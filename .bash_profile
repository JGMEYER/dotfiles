dotfiles=$HOME/.dotfiles

# NOTES:
# Future idea. All subdirs could include a "sourceme" file with instructions on
# what to source in their subdirs.

# =====================
# Environment Variables
# =====================

# Remove details from terminal prompt
export PS1="$ "

# Go
#export GOPATH=$(go env GOPATH)
#export GOROOT="$(brew --prefix golang)/libexec"
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

#export TF_VAR_namespace=justianm

# Editors
export PATH="/usr/local/bin/idea:$PATH"
export EDITOR=vim

# =====================
# Enable vi keybindings
# =====================

set -o vi

# =================
# Track cmd history
# =================

# Maximum number of history lines in memory
export HISTSIZE=50000
# Maximum number of history lines on disk
export HISTFILESIZE=50000
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file
#  instead of overwriting it
shopt -s histappend

# After each command, append to the history file
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# =============
# ENV Variables
# =============

# TODO recursively source files in env/

# ========
# RC Files
# ========

# .ideavimrc should not be sourced
#for f in "$dotfiles/rc/.[^.]*"; do source $f; done

# ==============
# Alias handling
# ==============

# TODO recursively source files in bash/
source $dotfiles/bash/aliases.sh

alias ae='vim $dotfiles/bash/aliases.sh'  # edit
alias aew='vim ~/.aliases.work' # edit work
alias ar='source $dotfiles/bash/aliases.sh'  # reload
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# =============
# Accessibility
# =============

# Enable CTRL + S to scroll through reverse-i-search
stty -ixon

# ======
# Python
# ======

export PATH="~/Library/Python/3.6/bin:$PATH"
export PYTHONSTARTUP="$dotfiles/.pyrc"

eval "$(pyenv init - bash)"
#eval "$(pyenv virtualenv-init -)"  # this was slowing down the shell
			            # see https://github.com/pyenv/pyenv-virtualenv/issues/132
				    # for debug steps
# ====
# Ruby
# ====

#export PATH="/usr/local/lib/ruby/gems/2.5.0/bin:$PATH"
#export PATH="/usr/local/opt/ruby/bin:$PATH"
#export LDFLAGS="-L/usr/local/opt/ruby/lib"
#export CPPFLAGS="-I/usr/local/opt/ruby/include"
#export PKG_CONFIG_PATH="/usr/local/opt/ruby/lib/pkgconfig"
#export RBENV_ROOT=/usr/local/var/rbenv
#eval "$(rbenv init -)"

# ============
# Work-related
# ============

export PATH=$HOME/bin:$HOME/.toolbox/bin:$PATH
