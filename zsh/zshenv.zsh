# Configure Bundler install path
export BUNDLE_PATH=vendor/bundle

# Load Composer global binaries
export PATH=$PATH:$HOME/.composer/vendor/bin

# Load dotfile binaries
export PATH=$PATH:$DOTFILES/bin

# chruby setup
source /opt/boxen/env.sh
chruby 2.1
