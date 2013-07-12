# Useful unix commands
alias ls="ls -G" # Color listing
alias ll="ls -l"
alias g="grep --color=auto -n"
alias gr="g -R"

# Git

alias gst="git status"
alias ga="git add"
alias gl="git pull"
alias gp="git push"
alias gc="git commit"
alias gcm="git commit -m"
alias gd="git diff"
alias gdc="git diff --cached"
alias glg="git log"
alias gb="git branch"
alias gco="git checkout"

__git_complete ga  _git_add
__git_complete gl  _git_pull
__git_complete gp  _git_push
__git_complete gc  _git_commit
__git_complete gcm _git_commit
__git_complete gd  _git_diff
__git_complete gdc _git_diff
__git_complete gl  _git_log
__git_complete gb  _git_branch
__git_complete gco _git_checkout
