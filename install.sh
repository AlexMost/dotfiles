#!/bin/bash

REPO="https://github.com/AlexMost/dotfiles.git --recursive"
EXCLUDE=(README.md install.sh)
BACKUPS_FOLDER=".dotbackup"
DOT_FOLDER=".dot"
L="   ---- "

in_array(){
    el=$1
    shift
    while test $# -gt 0; do
        test $el = $1 && return 0
        shift
    done
    return 1
}

if [[ ! -d "$HOME/$DOT_FOLDER" ]]; then
    echo "cloning dotfiles ..."
    git clone $REPO "$HOME/.dot"
    cd "$HOME/$DOT_FOLDER"
    . ./install.sh
else
    echo "installing dotfiles ..."

    # Creating backup forlder if not exists
    if [[ ! -d "$HOME/$BACKUPS_FOLDER" ]]; then
        mkdir "$HOME/$BACKUPS_FOLDER"
    fi

    for i in $(ls)
    do
        if ! in_array $i ${EXCLUDE[@]}
        then
            LINK="$HOME/.$i"

            # Making backups if exists
            if [[ -f $LINK ]] || [[ -d $LINK ]]; then
                echo "$L saving backup for $LINK"
                mv $LINK "$HOME/$BACKUPS_FOLDER"
            fi

            # Making symbolic link
            echo "$L linking $LINK"
            ln -s "$HOME/$DOT_FOLDER/$i" $LINK
        fi
    done
    source ~/.zshrc
fi