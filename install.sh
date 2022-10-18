#!/bin/bash
# Zsh
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.backup
cp .zshrc $HOME/.zshrc
cp aliases.zsh $HOME/.oh-my-zsh/custom/aliases.zsh
cp config.zsh $HOME/.oh-my-zsh/custom/config.zsh
cp env.zsh $HOME/.oh-my-zsh/custom/env.zsh
cp path.zsh $HOME/.oh-my-zsh/custom/path.zsh
cp window.zsh $HOME/.oh-my-zsh/custom/window.zsh
cp .p10k.zsh $HOME/.p10k.zsh

# .gitconfig
[ -f $HOME/.gitconfig ] && mv $HOME/.gitconfig $HOME/.gitconfig.backup
cp .gitconfig $HOME/.gitconfig

# tmux.conf
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
cp .tmux.conf $HOME/.tmux.conf

# Vim
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.backup
cp vimrc $HOME/.vimrc

[ -f $HOME/.vimbundle ] && mv $HOME/.vimbundle $HOME/.vimbundle.backup
cp vimbundle $HOME/.vimbundle

# Ensure dirs present
mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/colors

# Get colors and plug
cp colors/sonokaimore.vim $HOME/.vim/colors/sonokaimore.vim
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.vim/autoload/plug.vim

