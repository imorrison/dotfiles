#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update


echo "Deleting the old files"
rm ~/.vimrc
rm ~/.vim
rm ~/.gitconfig


echo "Symlinking Files"
ln -s ~/Github/dotfiles/vim ~/.vim
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig

echo "Update submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done"
