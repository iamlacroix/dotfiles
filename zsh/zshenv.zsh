# Configure Bundler install path
export BUNDLE_PATH=vendor/bundle

# Load Composer global binaries
export PATH=$PATH:$HOME/.composer/vendor/bin

# Load dotfile binaries
export PATH=$PATH:$DOTFILES/bin
export PATH="$PATH:$HOME/Dropbox (Personal)/Scripts"

# Rubygems
export ARCHFLAGS="-arch x86_64"

# Node.js REPL history
export NODE_REPL_HISTORY_FILE="$HOME/.node_repl_history"

# Set editors
export VISUAL=vim
export EDITOR=vim

# Add Homebrew lib. Added for letsencrypt
# export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/opt/boxen/homebrew/lib"

# chruby setup
source /opt/boxen/env.sh
chruby 2.1

# nvm
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"
