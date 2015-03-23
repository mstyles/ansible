#!/bin/bash
#clone vim dots, install plugins
git clone https://github.com/mstyles/vim .vim
cd .vim
cp .ackrc ~
cp .ctags ~
git submodule update --init
cd -
ln .vim/vimrc .vimrc
vim +PluginInstall +qall
