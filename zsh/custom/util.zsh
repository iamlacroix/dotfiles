# ps aux | grep $@
function psg() {
  ps aux | grep $@
}

# mkdir && cd !$
function mk() {
  mkdir -p "$@" && cd "$@"
}

# Helper to see if a command exists
command_exists () {
  type "$1" &> /dev/null ;
}

# Use neovim if it's installed
if command_exists nvim ; then
  alias vim='nvim'
fi
