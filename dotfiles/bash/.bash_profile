if [ -z "$DOTFILES_INIT" ]; then
    test -f ~/.profile && . ~/.profile
    test -f ~/.bashrc && . ~/.bashrc
fi