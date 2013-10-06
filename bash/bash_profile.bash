# Set color
#
export TERM='xterm-256color'

# Make Vim the default editor
#
export EDITOR='vim'

# Linux/Mac colors for `ls`
#
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# Auto-completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
