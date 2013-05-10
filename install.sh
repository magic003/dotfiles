#!/bin/sh

##########################
# install.sh
# This script creates symlinks from the home directory to any desired
# dotfiles in current folder
##########################

for name in *
do
  target="$HOME/.$name" 
  if [ -e "$target" ]
  then
    if [ -L "$target" ]
    then
      echo "Replace the existing symlink $target"
      rm "$target"
      ln -s "$PWD/$name" "$target"
    else
      echo "WARNING: $target exists but is not a symlink."
    fi
  else
    if [ "$name" != 'install.sh' ] && [ "$name" != 'README.md' ]
    then
      echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
  fi
done
