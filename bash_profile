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
alias l="ls -F ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Handy shortcuts
alias bx='bundle exec'
alias untar='tar -xvzf '

# Create a new Rails application with the LaCroix Design Co. template
function railstemplate() {
  if [ $1 ]; then
    rails new $1 -m https://github.com/iamlacroix/rails-template/raw/master/template.rb
  else
    echo "Please provide a name for the application."
  fi
}

# Auto-completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Git-completion
if [ -f $HOME/dotfiles/git/completion.bash ]; then
  . $HOME/dotfiles/git/completion.bash
fi

# Create symbolic link PROJECT_NAME/Resources
# to Dropbox/Projects/PROJECT_NAME directory
# 
dropbox_projects=$HOME/Dropbox/Projects
function resource() {

  # If arg was supplied
  # 
  if [ $1 ]; then
    resource_directory=$dropbox_projects/$1
    resource_symlink=$PWD/Resources

    # Exit if ./Resources directory already exists
    if [ -L "$resource_symlink" ]; then
      echo "$PWD/Resources already exists."
      echo "No changes will be made."
      return
    fi

    # If directory exists
    # 
    if [ -d "$resource_directory" ]; then
      echo "Exists $resource_directory"
    # Else - make directory
    # 
    else
      echo "Creating $resource_directory"
      mkdir -p $dropbox_projects/$1
    fi

    # Create ./Resources symlink to Dropbox directory
    # 
    echo "Linking ./Resources"
    ln -s $resource_directory $resource_symlink

  # Else - no arg was supplied
  # 
  else
    echo "Please provide the name of the project. Titlecase is preferred."
  fi
}


# Make Vim the default editor
export EDITOR='vim'

# rbenv
eval "$(rbenv init -)"
