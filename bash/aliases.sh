# ========
# Dotfiles
# ========

alias src="source $HOME/.bash_profile"
alias bp="$EDITOR ~/.bash_profile"

alias df="cd $HOME/.dotfiles"

# =======
# General
# =======

alias ls="/usr/local/bin/gls --color -h --group-directories-first"
alias sl=ls
alias la="/usr/local/bin/gls --color -hla --group-directories-first"
alias fif=find_in_file
alias fifi=find_in_file_with_ignore

find_in_file() {
    rg --no-ignore -i -- $1
}
find_in_file_with_ignore() {
    rg --no-ignore -i -- $1
}

# ===
# Git
# ===

alias ga="git add"
alias grm="git rm"
alias gbr="git branch"
alias gco="git checkout"
alias gcom="git commit -m"
alias gam="git commit --amend"
alias gd="git diff"
alias gdl="git show"
alias gst="git status"
alias gh="git log --graph --abbrev-commit --branches --remotes --tags --graph --oneline --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)'"

# =======
# Aliases
# =======

alias ae="vim $HOME/.dotfiles/bash/aliases.sh"
alias ar="source $HOME/.dotfiles/bash/aliases.sh"
