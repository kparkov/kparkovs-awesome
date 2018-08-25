#!/bin/bash

source ./setup.sh

bash-it enable alias homebrew
bash-it enable alias homebrew-cask
bash-it enable alias osx

bash-it enable completion brew
bash-it enable completion nvm

bash-it enable plugin osx
bash-it enable plugin sshagent