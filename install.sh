#!/bin/bash

#move existing rc files
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc-moved
fi
if [ -f ~/.gvimrc ]; then
  mv ~/.gvimrc ~/.gvimrc-moved
fi

#add symlinks
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.gvimrc" ~/.gvimrc

#get submodules
git submodule init
git submodule update

