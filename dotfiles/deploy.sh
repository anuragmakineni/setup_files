#!/bin/bash
FILES=(bash_local
bash_aliases
bash_functions
vimrc
bundles
tmuxline
tmux.conf
gitconfig
gitignore
inputrc
promptline.sh
)

for file in "${FILES[@]}"
do
    echo Linking "$file" to $HOME
    ln -sf $(pwd)/$file ~/.$file
done
