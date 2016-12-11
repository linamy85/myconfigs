#!/bin/bash

rm -rf .git/

cp -r .* ~

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

# install YouCompletMe
cd ~/.vim/bundle/YouCompleteMe

./install.py --clang-completer
