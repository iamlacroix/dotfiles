# source ~/.fresh/build/shell.sh
# export DOT=$HOME/.dotfiles
# export FRAMEWORKS=$HOME/Frameworks

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$DOTFILES/zsh/custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="shibuya"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git npm extract mix brew bower vagrant heroku lein golang)

source $ZSH/oh-my-zsh.sh
# source $DOT/init.sh

# aliases
# alias adb='~/Frameworks/Android/platform-tools/adb'
# alias mysqlstart='sudo /usr/local/mysql/bin/mysqld_safe'
# alias mysqlstop='sudo /usr/local/mysql/bin/mysqladmin -u root shutdown'
