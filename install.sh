# /bin/bash

command -v nvim -v >/dev/null && continue || { echo "$i nvim not found, please install it."; exit 1; }

cp init.vim $HOME/.config/nvim/init.vim
cp .tmux.conf $HOME/.tmux.conf
cp .zshrc $HOME/.zshrc

