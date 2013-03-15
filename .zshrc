# Set zsh 
export ZSH=$HOME/.oh-my-zsh
export ZSH_COMPLETIONS=$ZSH/completions/src
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
         paster
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
         xterm
         zsh-completions
         zsh-history-substring-search
         zsh-syntax-highlighting)

# Load zsh config
source $ZSH/oh-my-zsh.sh
