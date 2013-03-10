# Set zsh 
export ZSH=$OMZ_HOME

# Set zsh theme
export ZSH_THEME="gnzh.custom"

# Set update interval for zsh
export UPDATE_ZSH_DAYS=7

# Select zsh plugins
plugins=(ant
         cabal
         cake
         coffee
         command-not-found
         debian
         encode64
         extract
         fasd
         gem
         git
         git-extras
         github
         heroku
         jake-node
         lein
         mvn
         mercurial
         npm
         nvm
         pip
         redis-cli
         rsync
         rvm
         screen
         sublime
         svn
         themes
         urltools
         vagrant
         virtualenvwrapper
         xterm)

# Load zsh config
source $ZSH/oh-my-zsh.sh
