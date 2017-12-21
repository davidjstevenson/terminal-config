#!/bin/bash

if [ -f ~/.zshrc ] ||
   [ -f ~/.vimrc ] ||
   [ -f ~/.vimrc.vim ] ||
   [ -f ~/.tmux.conf ] ||
   [ -f ~/.oh-my-zsh ] ||
   [ -f ~/.vim_runtime ]; then
    echo "some files already exist, done nothing. aborting..."
    exit 1
fi

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# conf files
ln -s $DIR/zshrc ~/.zshrc
ln -s $DIR/vimrc ~/.vimrc
ln -s $DIR/vimrc.vim ~/.vimrc.vim
ln -s $DIR/tmux.conf ~/.tmux.conf

# conf folders
ln -s $DIR/vim_runtime ~/.vim_runtime
ln -s $DIR/oh-my-zsh ~/.oh-my-zsh

echo "installed"

