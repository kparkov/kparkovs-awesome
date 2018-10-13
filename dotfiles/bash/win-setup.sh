#!/bin/bash

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "Windows setup, running common setup first."
source $ROOTDIR/common-setup.sh

echo "Disabling alias-completion in bash-it, as it causes problems in Windows."

bash-it disable plugin alias-completion

echo "Setup the ssh agent initializer in .bashrc."

cat $ROOTDIR/ssh-agent.include.bashrc >> ~/.bashrc
cat $ROOTDIR/disable-git-info.include.bashrc >> ~/.bashrc