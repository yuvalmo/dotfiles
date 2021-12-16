#!/bin/bash

function lnk() {
    src=$1
    dst=$2

    echo "[link] $src to $dst"
    rm $dst
    ln -s $src $dst
}

# apt
sudo apt update && sudo apt install -y \
    fzf \
    ripgrep

path=$(realpath $0)
dotfiles=$(dirname $path)

# bash
lnk $dotfiles/bash/bashrc          ~/.bashrc
lnk $dotfiles/bash/bash_aliases.sh ~/.bash_aliases.sh

# git
lnk $dotfiles/gitconfig ~/.gitconfig

# vim
lnk $dotfiles/vim/vimrc ~/.vimrc
# lnk $dotfiles/vim/vim   ~/.vim
