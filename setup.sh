#!/bin/bash

set -e

mkdir -p ~/.vim

cp -rf .vim/colors ~/.vim
cp .vimrc ~
cp .ycm_extra_conf.py ~

cp .bashrc ~
cp .gitconfig ~
cp .tmux.conf ~

# install vim plugins
BUNDLE=$HOME/.vim/bundle/Vundle.vim

if [ ! -d $BUNDLE ]; then
  echo "FILE not found"
  git clone https://github.com/VundleVim/Vundle.vim.git $BUNDLE
fi

vim +PluginInstall +qall

# install YouCompletMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.py --clang-completer
