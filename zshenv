# Set 256 color
if [[ -n "$DISPLAY" && "$TERM" == "xterm" ]]
then
  export TERM=xterm-256color
fi

# Set browser
case $OSTYPE in
  linux* ) export BROWSER='xdg-open';;
  darwin* ) export BROWSER='open';;
esac

# Set editors
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

# Set language
if [[ -z "$LANG" ]]
then
  eval "$(locale)"
fi

# Set path variables
typeset -gU cdpath fpath mailpath manpath path
typeset -gUT INFOPATH infopath

RVM_HOME=$HOME/.rvm
RVM_PATH=$RVM_HOME/bin

NVM_HOME=$HOME/.nvm
NVM_PATH=$NVM_HOME/bin

ARCANIST_HOME=$HOME/opt/arcanist
ARCANIST_PATH=$ARCANIST_HOME/bin

export PATH=$ARCANIST_PATH:$CABAL_PATH:$PATH

export VIRTUALENVWRAPPER_SCRIPT=/etc/bash_completion.d/virtualenvwrapper

