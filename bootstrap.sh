#!/usr/bin/env bash

set -x 

# install go-vim
plugins=$HOME/.vim/pack/plugins/start
default=$HOME/.vim/pack/default/start

[[ -d $plugins/vim-go ]] || git clone https://github.com/fatih/vim-go.git "$plugins"/vim-go
[[ -d $default/gruvbox ]] || git clone https://github.com/morhetz/gruvbox.git "$default"/gruvbox

echo bash_source="${BASH_SOURCE}"
echo bash_source_0="${BASH_SOURCES[0]}"

me=$(dirname "${BASH_SOURCE[0]}")
cp "${me}"/.vimrc "$HOME"/.vimrc
#vim -c ":GoInstallBinaries" -c ":x"
