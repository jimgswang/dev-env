#!/bin/bash
# Jim Wang
# jim.gs.wang@gmail.com

# Install tmux
sudo apt-get install -y tmux

# Install curl
sudo apt-get install -y curl

sudo apt-get install -y vim-nox

# Install Vim Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Vim plugins
cd ~/.vim/bundle

# Install vim-slime
git clone git://github.com/jpalardy/vim-slime.git

# Install NERDtree
git clone https://github.com/scrooloose/nerdtree.git

# Install jshint2
git clone git://github.com/Shutnik/jshint2.vim.git

# Install LustyJuggler 
git clone git://github.com/vim-scripts/LustyJuggler.git
# Install rlwrap
sudo apt-get install -y rlwrap

# symlink the included dotfiles
cd $HOME
ln -sb dev-env/.bashrc .
ln -sb dev-env/.screenrc .
ln -sb dev-env/.tmux.conf .
ln -sb dev-env/.vimrc .
ln -sb dev-env/.jshintrc .
