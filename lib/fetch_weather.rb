#!/usr/bin/env ruby

require 'open-uri'
require 'json'
require 'etc'


# Fetches current conditions from WeatherUnderground
# Pass in the zip code of your location via the command line
# 
#   ./fetch_weather.rb [zipcode]
# 
# Set up a cron job to run this script
# If using rbenv, use the following example
# 
#   /bin/bash -c 'export PATH="$HOME/.rbenv/bin:$PATH" ; eval "$(rbenv init -)"; ruby PATH/TO/FILE/fetch_weather.rb [zipcode]'
# 

zip_code = ARGV[0] || "37203"
user     = Etc.getlogin
file     = File.join(Dir.home(user), ".weather")

unless zip_code.nil? || zip_code.empty?
  open("http://api.wunderground.com/api/43981870a5f611c4/geolookup/conditions/q/#{zip_code}.json") do |f|
    json_string = f.read
    parsed_json = JSON.parse(json_string)
    temp_f = parsed_json['current_observation']['temp_f'].to_f.round
    File.open(file, 'w') { |f| f.write(temp_f) }
    File.chmod 0664, file
  end
end
