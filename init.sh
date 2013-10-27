function init() {
  local base="$DOT" && [[ $DOT == "" ]] && base="$HOME/.dotfiles"
  local lib="lib"
  local vendor="vendor"

  export PATH="$base/bin:$PATH"

  source $base/$lib/util.sh
  source $base/$lib/ruby.sh
  source $base/$lib/node.sh
  source $base/$lib/scala.sh
  source $base/$lib/aliases.sh

  # zsh
  # if [[ $ZSH_NAME != '' ]]; then
  #   local dir="zsh"
  #   source $base/$dir/aliases.sh
  # fi

  # bash
  if [[ $BASH != '' ]]; then
    local dir="bash"
    source $base/$dir/lib/git_completion.bash
    source $base/$dir/lib/bower_completion.bash
    source $base/$dir/config.sh
    source $base/$dir/functions.sh
    source $base/$dir/aliases.sh
    source $base/$dir/prompt.sh
  fi
}

init
unset -f init
unset -v DOT
