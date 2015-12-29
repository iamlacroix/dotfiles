# Configure Bundler install path
export BUNDLE_PATH=vendor/bundle

# Load Composer global binaries
export PATH=$PATH:$HOME/.composer/vendor/bin

# Load dotfile binaries
export PATH=$PATH:$DOTFILES/bin

# Rubygems
export ARCHFLAGS="-arch x86_64"

# Node.js REPL history
export NODE_REPL_HISTORY_FILE="$HOME/.node_repl_history"

# chruby setup
source /opt/boxen/env.sh
chruby 2.1
