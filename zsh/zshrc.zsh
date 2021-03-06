# Path to your oh-my-zsh configuration.
# ZSH=$HOME/.oh-my-zsh
# ZSH_CUSTOM=$DOTFILES/zsh/custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="shibuya"
ZSH_THEME="robbyrussell"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Plugins no longer used: lein golang mix vagrant
plugins=(git npm brew bower extract nvm heroku docker docker-compose mix)

source $ZSH/oh-my-zsh.sh

# zsh autocomplete
#
#   https://github.com/zsh-users/zsh-autosuggestions
#   brew install zsh-autosuggestions
#
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh syntax highlighting
#
#   https://github.com/zsh-users/zsh-syntax-highlighting
#   brew install zsh-syntax-highlighting
#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
