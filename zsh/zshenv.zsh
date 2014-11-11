source /opt/boxen/env.sh
chruby 2.1

# export PATH="$DOTFILES/bin:/usr/local/sbin:$PATH" # previously located in $DOTFILES/init

# set PATH
# export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:$PATH
# export PATH=/usr/local/mysql/bin:$PATH

# Homebrew fix (dup pkg-config in /opt/local/bin)
# export PKG_CONFIG_PATH=/usr/local/bin/pkg-config

# use Postgres.app instead of built-in Postgres
# export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# golang
# export GOPATH=$FRAMEWORKS/gocode
# export PATH=$PATH:$GOPATH/bin
