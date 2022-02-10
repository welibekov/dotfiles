#!/usr/bin/env bash

# install go-vim
git clone https://github.com/fatih/vim-go.git "$HOME"/.vim/pack/plugins/start/vim-go
git clone https://github.com/morhetz/gruvbox.git ~/.vim/pack/default/start/gruvbox

me=$(dirname "${BASH_SOURCE[0]}")
cp "${me}"/.vimrc "$HOME"/.vimrc
vim -c ":GoInstallBinaries" -c ":x"
