#!/usr/bin/env bash

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.gitconfig


echo "Symlinking Files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc
ln -s ~/Github/dotfiles/gitconfig ~/.gitconfig


echo "All done"
