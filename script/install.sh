#!/bin/sh

set -e

remove_file () {
  rm -rf $1
  echo "removed $1"
}

remove_dotfiles() {
  echo 'removing current dotfiles'
  for source in `find $DOTFILES/config -mindepth 1 -maxdepth 1 \( ! -iname ".*" \)`
  do
    dest="$HOME/.`basename \"${source}\"`"
    if [ -f $dest ] || [ -d $dest ]
    then
      remove_file $dest
    fi
  done
}

link_file () {
  ln -s $1 $2
  echo "linked $2 to $1"
}

install_dotfiles() {
  echo 'installing dotfiles'
  for source in `find $DOTFILES/config -mindepth 1 -maxdepth 1 \( ! -iname ".*" \)`
  do
    dest="$HOME/.`basename \"${source}\"`"
    link_file $source $dest
  done
}

remove_dotfiles
install_dotfiles
