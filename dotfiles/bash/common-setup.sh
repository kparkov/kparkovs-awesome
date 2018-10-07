#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "Installing bash-it."

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.bashrc_backup
    echo "Old .bashrc saved as ~/.bashrc_backup."
fi

if [ -f ~/.bash_profile ]; then
    mv ~/.bash_profile ~/.bash_profile_backup
    echo "Old .bash_profile saved as ~/.bash_profile."
    cp $ROOTDIR/.bash_profile ~/
fi

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
cd ~/.bash_it
git pull

./install.sh

echo "Sourcing .bashrc, which may cause errors."
source ~/.bashrc < <(echo anything)

echo "Setting up bash-it."

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

echo "Ensuring that ~/.environment exists and is sourced in .bashrc. Use this file to insert your machine specific details."

touch ~/.environment

echo 'source ~/.environment' >> ~/.bashrc