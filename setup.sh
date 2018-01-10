#!/bin/bash

if [ -f ~/.zshrc ] ||
   [ -f ~/.vimrc ] ||
   [ -f ~/.vimrc.vim ] ||
   [ -f ~/.tmux.conf ] ||
   [ -f ~/.oh-my-zsh ] ||
   [ -f ~/.gitconfig ] ||
   [ -f ~/.vim_runtime ]; then
    echo "some files already exist, done nothing. aborting..."
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f $DIR/oh-my-zsh/custom/themes/powerlevel9k ]; then
    mkdir -p $DIR/oh-my-zsh/custom/themes
    git clone https://github.com/bhilburn/powerlevel9k.git $DIR/oh-my-zsh/custom/themes/powerlevel9k
fi

# conf files
ln -s $DIR/zshrc ~/.zshrc
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/vimrc.vim ~/.vimrc.vim
ln -s $DIR/tmux.conf ~/.tmux.conf
ln -s $DIR/gitconfig ~/.gitconfig

# conf folders
ln -s $DIR/vim_runtime ~/.vim_runtime
ln -s $DIR/oh-my-zsh ~/.oh-my-zsh

echo "installed"

