#!/bin/bash

rm -rf .git/

cd ..

mv -r myconfigs/.* ~

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

# install YouCompletMe
cd ~/.vim/bundle/YouCompleteMe

./install.py --clang-completer
