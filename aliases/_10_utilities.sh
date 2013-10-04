# Reload bash config
#
alias reload='source $HOME/.bash_profile 1>/dev/null'

# Search bash history & highlight search term
#
alias hist='history | grep --color=auto'

# Always use color for grep
#
alias grep='grep --color=auto'

# npm
#
function npmls() {
  npm ls --depth=0 "$@" 2>/dev/null
}

# ps aux | grep $@
#
function psg() {
	ps aux | grep $@
}

