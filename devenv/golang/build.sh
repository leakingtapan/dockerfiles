#!/bin/bash
set -euo pipefail

# Update the install common utilities
apt-get update && apt-get install -y \
    curl \
    git \
    make \
    tmux \
    tree \
    vim \
    zsh \
    language-pack-en && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# install language
sed -i 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/g' /etc/locale.gen
locale-gen

# install oh-my-zsh
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh

# install golang
go_tar_file=go1.14.3.linux-amd64.tar.gz
curl -O https://dl.google.com/go/$go_tar_file
tar xzf /root/$go_tar_file -C /usr/local
rm $go_tar_file
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc

# install dotfiles
git clone https://github.com/leakingtapan/dotfiles.git ~/dotfiles

# install VIM plugins
## vim-go
git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go

## solarized
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o ~/.vim/colors/solarized.vim

## vim tmux navigator
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator

## CtrlP
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/pack/plugins/start/ctrlp

## NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/plugins/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/nerdtree/doc" -c q

## Powerline
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/plugins/start/vim-airline
vim -u NONE -c "helptags ~/.vim/pack/plugins/start/vim-airline/doc" -c q
