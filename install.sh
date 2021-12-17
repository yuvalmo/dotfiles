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
    ccls \
    fzf \
    ripgrep \
    xclip

# bat requires a special installation because of a
# bug when installed alongside ripgrep, both being
# rust-based packages.
sudo apt install -o Dpkg::Options::="--force-overwrite" \
    bat

path=$(realpath $0)
dotfiles=$(dirname $path)

echo ""
echo "Creating symlinks:"

# bash
lnk $dotfiles/bash/bashrc       ~/.bashrc
lnk $dotfiles/bash/bash_aliases ~/.bash_aliases

# git
lnk $dotfiles/gitconfig ~/.gitconfig

# vim
lnk $dotfiles/vim/vimrc ~/.vimrc
lnk $dotfiles/vim/vim   ~/.vim

echo ""
echo "Done."
