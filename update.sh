#!/bin/bash

REL=$(pwd |perl -p -e "s|$HOME/||g")
PWD=$(pwd)

git pull
git submodule init
git submodule update
rm .profile
ln -si $REL/bashrc $HOME/.bashrc
ln -si $REL/bash_profile $HOME/.bash_profile
ln -si $REL/vimrc $HOME/.vimrc
#rm -ri $HOME/.vim
mkdir $HOME/.vim/
mkdir $HOME/.vim/bundle
ln --sf $REL/vim/bundle/neobundle.vim $HOME/.vim/bundle/neobundle.vim
ln --sf $REL/vim/colors $HOME/.vim/colors
ln -si $REL/gitconfig $HOME/.gitconfig
ln -si $REL/siegerc $HOME/.siegerc
ln -si $REL/csshrc $HOME/.csshrc
ln -si $REL/i2csshrc $HOME/.i2csshrc
mkdir $HOME/.config
ln -sf ../$REL/liquidpromptrc $HOME/.config/liquidpromptrc
ln -si ../$REL/ssh/config $HOME/.ssh/config
chmod 0600 $HOME/.ssh/config
