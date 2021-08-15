#!/bin/bash

sudo apt update
sudo apt install tmux zsh python3 git curl wget nvim -y

# Install ohmyzsh

sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp ~/.zshrc ~/.zshrc.bak
cp ~/.dotfiles/zsh/zshrc ~/.zshrc

# Install tmux

cp ~/.tmux.conf ~/.tmux.conf.bak
cp ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf

# Install vim

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime

cp ~/.nvimrc ~/.nvimrc.bak
cp ~/.dotfiles/vim/vimrc ~/.nvimrc
cp ~/.vimrc ~/.vimrc.bak
cp ~/.dotfiles/vim/vimrc ~/.vimrc

cp ~/.dotfiles/vim/monokai.vim /usr/share/nvim/runtime/colors/monokai.vim

