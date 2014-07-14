#!/bin/sh

echo "Linking dotfiles in ~/"
chmod +x ./makesymlinks.sh
./makesymlinks.sh
# Remove +x bit again to prevent makesymlinks.sh going out of sync with git repo
chmod -x ./makesymlinks.sh

echo "Installing Vim plugins..."
git clone git://github.com/gmarik/Vundle.vim.git ./vim/bundle/vundle
vim -u ./vimbootstraprc +BundleInstall +qall
