#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update


echo "Deleting the old files"
rm ~/.gvimrc
rm ~/.vimrc
rm ~/.vim
rm ~/.gitconfig
rm ~/.gitignore


echo "Symlinking Files"
ln -s ~/Github/dotfiles/gvimrc ~/.gvimrc
ln -s ~/Github/dotfiles/vim ~/.vim
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Gitbub/dotfiles/gitignore ~/.gitignore

echo "Update submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done"
