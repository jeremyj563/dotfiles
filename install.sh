#!/bin/bash

# Zsh - Installation
[ -f $HOME/.zshrc ] && mv $HOME/.zshrc $HOME/.zshrc.backup
cp .zshrc $HOME/.zshrc

# Oh My Zsh - Installation + Themes
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
cp .p10k.zsh $HOME/

# Oh My Zsh - Configuration
cp aliases.zsh $HOME/.oh-my-zsh/custom/
cp env.zsh $HOME/.oh-my-zsh/custom/
cp window.zsh $HOME/.oh-my-zsh/custom/

# git - Configuration
[ -f $HOME/.gitconfig ] && mv $HOME/.gitconfig $HOME/.gitconfig.backup
cp .gitconfig $HOME/.gitconfig

# tmux - Configuration
[ -f $HOME/.tmux.conf ] && mv $HOME/.tmux.conf $HOME/.tmux.conf.backup
cp .tmux.conf $HOME/.tmux.conf

# Vim - Configuration
[ -f $HOME/.vimrc ] && mv $HOME/.vimrc $HOME/.vimrc.backup
cp vimrc $HOME/.vimrc
[ -f $HOME/.vimbundle ] && mv $HOME/.vimbundle $HOME/.vimbundle.backup
cp vimbundle $HOME/.vimbundle

# Vim - Colors
mkdir -p $HOME/.vim/autoload
mkdir -p $HOME/.vim/colors
cp colors/sonokaimore.vim $HOME/.vim/colors/sonokaimore.vim
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -O $HOME/.vim/autoload/plug.vim

