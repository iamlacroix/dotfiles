# reload shell config
alias reload='echo "source $HOME/.zshrc"; source $HOME/.zshrc'

# listing files
alias l='ls -F'
alias la='ls -FA'
alias ll='ls -lhF'
alias lla='ls -lhFA'
alias l.='ls -dF .*'
alias ll.='ls -dlhF .*'

# Visual Studio Code
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
