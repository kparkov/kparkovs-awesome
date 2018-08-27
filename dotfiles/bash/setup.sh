#!/bin/bash

if [ ! -d ~/.bash_it ]; then

    if [ -f ~/.bash_rc ]; then
        mv ~/.bash_rc ~/.bash_rc_backup
    fi

    if [ -f ~/.bash_profile ]; then
        mv ~/.bash_profile ~/.bash_profile_backup
    fi

    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it

    cd ~/.bash_it

    ./install.sh

fi

source ~/.bashrc
source ~/.bash_profile

bash-it enable alias curl
bash-it enable alias git
bash-it enable alias npm

bash-it enable alias todo.txt-cli
bash-it enable alias tmux
bash-it enable alias vim
bash-it enable alias yarn

bash-it enable completion bash-it
bash-it enable completion docker
bash-it enable completion docker-compose
bash-it enable completion git
bash-it enable completion npm
bash-it enable completion ssh

bash-it enable plugin docker
bash-it enable plugin docker-compose
bash-it enable plugin git
bash-it enable plugin node
bash-it enable plugin ssh
bash-it enable plugin visual-studio-code
