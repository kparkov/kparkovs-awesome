#!/bin/bash

export MSYS_NO_PATHCONV=1 # to make sure volumes are not misinterpreted in Windows Git Bash and docker

ROOTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
SRCDIR=$ROOTDIR/bash

command="${1: }"
arguments="${@:2}"

help() {
    echo -e "
    dotfiles installation ❤️

    Usage: ./install.sh <os>

    os:
      win             Git bash in Windows
      mac             MacOS
    "
}

case ${command} in
    -h)
        help
        ;;
    --help)
        help
        ;;
    help)
        help
        ;;
    "")
        help
        ;;
    win)
        cd $SRCDIR && ./win-setup.sh $arguments
        ;;
    mac)
        cd $SRCDIR && ./mac-setup.sh $arguments
        ;;
    *)
        echo ""
        echo "Error. Unknown command."
        help
        ;;
esac





