#!/bin/sh

echo "Linking dotfiles in ~/"
chmod +x ./makesymlinks.sh
./makesymlinks.sh

echo "Installing Vim plugins..."
git clone git://github.com/gmarik/Vundle.vim.git ./vim/bundle/vundle
vim +BundleInstall +qall
