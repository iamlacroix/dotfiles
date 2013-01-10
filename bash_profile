export TERM='xterm-256color'


# mkdir && cd !$
# 
function mk() {
  mkdir -p "$@" && cd "$@"
}


# Better navigation: .., ..., ...., ....., ~ and -
# 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"


# Linux/Mac colors for `ls`
# 
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# `ls` shortcuts
# 
alias lsl="ls -l ${colorflag}"
alias lsa="ls -a ${colorflag}"
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'



# Handy shortcuts
alias bx='bundle exec'
alias untar='tar -xvzf '

# Auto-completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Git-completion
if [ -f $HOME/dotfiles/git/completion.bash ]; then
  . $HOME/dotfiles/git/completion.bash
fi


# Set Java home
# export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home/bin/

# JRuby :: Use 1.9 by default
export JRUBY_OPTS=--1.9

# Use Drip for fast JVM startup
# export JAVACMD=drip


# Make Vim the default editor
export EDITOR='vim'


# rbenv
eval "$(rbenv init -)"
