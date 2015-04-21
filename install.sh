#!/usr/bin/env bash

echo "Deleting the old files"
rm ~/.vimrc

echo "Symlinking Files"
ln -s ~/Github/dotfiles/vimrc ~/.vimrc

echo "All done"
