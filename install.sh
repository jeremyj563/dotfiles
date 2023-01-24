#!/bin/bash

# Zsh - Installation
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.backup
cp $HOME/.dotfiles/.zshrc $HOME/

# Oh My Zsh - Installation + Themes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp $HOME/.dotfiles/.p10k.zsh $HOME/

# Oh My Zsh - Configuration
cp $HOME/.dotfiles/aliases.zsh $HOME/.oh-my-zsh/custom/
cp $HOME/.dotfiles/env.zsh $HOME/.oh-my-zsh/custom/
cp $HOME/.dotfiles/window.zsh $HOME/.oh-my-zsh/custom/

# git - Configuration
[ -f $HOME/.gitconfig ] && mv $HOME/.gitconfig $HOME/.gitconfig.backup
cp $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

# tmux - Configuration
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
cp $HOME/.dotfiles/.tmux.conf $HOME/.tmux.conf

# Vim - Configuration
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.backup
cp $HOME/.dotfiles/vimrc $HOME/.vimrc
[ -f $HOME/.vimbundle ] && mv $HOME/.vimbundle $HOME/.vimbundle.backup
cp $HOME/.dotfiles/vimbundle $HOME/.vimbundle

# Vim - Colors
mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/colors
cp $HOME/.dotfiles/colors/sonokaimore.vim $HOME/.vim/colors/sonokaimore.vim
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.vim/autoload/plug.vim

