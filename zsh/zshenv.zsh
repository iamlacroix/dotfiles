# Configure Bundler install path
export BUNDLE_PATH=vendor/bundle

# Load Composer global binaries
export PATH=$PATH:$HOME/.composer/vendor/bin

# Rubygems
export ARCHFLAGS="-arch x86_64"

# Node.js REPL history
export NODE_REPL_HISTORY_FILE="$HOME/.node_repl_history"

# Set editors
export VISUAL=nvim
export EDITOR=nvim

# Homebrew
source /opt/boxen/env.sh

# Set up fzf command for vim
#   https://github.com/junegunn/fzf#respecting-gitignore-hgignore-and-svnignore
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Load dotfile binaries
export PATH=$PATH:$DOTFILES/bin
export PATH="$PATH:$HOME/Dropbox (Personal)/Scripts"

# added by Nix installer
# if [ -e /Users/iamlacroix/.nix-profile/etc/profile.d/nix.sh ]
#   then . /Users/iamlacroix/.nix-profile/etc/profile.d/nix.sh
# fi
