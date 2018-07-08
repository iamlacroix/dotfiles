# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZSH_CUSTOM=$DOTFILES/zsh/custom
WORKSPACE=$HOME/workspace

# Configure Bundler install path
export BUNDLE_PATH=vendor/bundle

# Load Composer global binaries
export PATH=$PATH:$HOME/.composer/vendor/bin

# Flutter
export PATH=$WORKSPACE/flutter/bin:$PATH

# Rubygems
# export ARCHFLAGS="-arch x86_64"

# Node.js REPL history
export NODE_REPL_HISTORY_FILE="$HOME/.node_repl_history"

# Set editors
export VISUAL=nvim
export EDITOR=nvim

# Homebrew
# source /opt/boxen/env.sh

# Set up fzf command for vim
#   https://github.com/junegunn/fzf#respecting-gitignore-hgignore-and-svnignore
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Use the custom italics-enabled TERM, see lib/xterm-256color-italic.terminfo
# export TERM=xterm-256color-italic

# Load dotfile binaries
export PATH=$PATH:$DOTFILES/bin
export PATH="$PATH:$HOME/Dropbox (Personal)/Scripts"

# Elixir/Erlang REPL history
export ERL_AFLAGS="-kernel shell_history enabled"

# asdf
if [ -f "$HOME/.asdf/asdf.sh" ]; then
  . $HOME/.asdf/asdf.sh
fi
# if [ -f "$HOME/.asdf/completions/asdf.bash" ]; then
#   . $HOME/.asdf/completions/asdf.bash
# fi

# added by Nix installer
# if [ -e /Users/iamlacroix/.nix-profile/etc/profile.d/nix.sh ]
#   then . /Users/iamlacroix/.nix-profile/etc/profile.d/nix.sh
# fi
