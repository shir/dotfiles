#!/bin/bash

GIT_BIN="/usr/bin/git"
GIT_URL="git@github.com:shir/dotfiles.git"
DOT_DIR=".dotfiles"
LN_BIN="ln -si"

DOT_FILES=".bashrc .bash_profile .bash_aliases .screenrc .gemrc .caprc .railsrc"

cd ${HOME}
${GIT_BIN} clone ${GIT_URL} ${DOT_DIR}

cd ${HOME}/${DOT_DIR}
${GIT_BIN} submodule update --init

cd ${HOME}
for dot_file in $DOT_FILES; do
  ${LN_BIN} "${DOT_DIR}/${dot_file}"
done