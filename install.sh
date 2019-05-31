#!/bin/bash
apt install --assume-yes vim
apt install --assume-yes curl
curl -fLo ~/.vim/autoload/plug.vim --create-dir https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -fs $PWD/.vimrc ~/.vimrc
