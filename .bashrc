if [ -f ~/.bash_aliases ]; then
 source ~/.bash_aliases
fi

color_is_on=
color_red=
color_green=
color_yellow=
color_blue=
color_white=
color_gray=
color_bg_red=
color_off=
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_is_on=true
    color_red="\[$(/usr/bin/tput setaf 1)\]"
    color_green="\[$(/usr/bin/tput setaf 2)\]"
    color_yellow="\[$(/usr/bin/tput setaf 3)\]"
    color_blue="\[$(/usr/bin/tput setaf 6)\]"
    color_white="\[$(/usr/bin/tput setaf 7)\]"
    color_gray="\[$(/usr/bin/tput setaf 8)\]"
    color_off="\[$(/usr/bin/tput sgr0)\]"
    color_error="$(/usr/bin/tput setab 1)$(/usr/bin/tput setaf 7)"
    color_error_off="$(/usr/bin/tput sgr0)"
fi

color_user=
if $color_is_on; then
    # set user color
    case `id -u` in
        0) color_user=$color_red ;;
        *) color_user=$color_blue ;;
    esac
fi

PS1="${color_user}\u${color_off}@${color_yellow}\h${color_off}:${color_white} \W${color_off}\n\$ "

# Homebrew
export PATH="${PATH}:/usr/local/sbin"

# RVM
export PATH="${PATH}:${HOME}/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

