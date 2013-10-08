alias cr='chruby'
alias z='zeus'
alias bx='bundle exec'

# Rails colorizer
alias rc='touch log/development.log && rails s | grc tail -f log/development.log'

# Create a new Rails application with the LaCroix Design Co. template
function railstemplate() {
  if [ $1 ]; then
    rails new $1 -m https://github.com/iamlacroix/rails-template/raw/master/template.rb
  else
    echo "Please provide a name for the application."
  fi
}
