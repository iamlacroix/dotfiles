# Bundler
# 
alias bx='bundle exec'

# Create a new Rails application with the LaCroix Design Co. template
# 
function railstemplate() {
  if [ $1 ]; then
    rails new $1 -m https://github.com/iamlacroix/rails-template/raw/master/template.rb
  else
    echo "Please provide a name for the application."
  fi
}

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
