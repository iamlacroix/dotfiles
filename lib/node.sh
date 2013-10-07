# npm
function npmls() {
  npm ls --depth=0 "$@" 2>/dev/null
}

# nvm
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
