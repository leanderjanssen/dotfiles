#!/bin/sh

echo "Linking dotfiles in ~/"
./makesymlinks.sh

echo "Installing Vim plugins..."
git clone git@github.com:gmarik/Vundle.vim.git ./vim/bundle/Vundle.vim
vim +BundleInstall +qall
