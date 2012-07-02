if [ -f ~/.bash_aliases ]; then
 source ~/.bash_aliases
fi

# Homebrew
export PATH="${PATH}:/usr/local/sbin"

# RVM
export PATH="${PATH}:${HOME}/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

