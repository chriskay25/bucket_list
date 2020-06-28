ENV["SINATRA_ENV"] ||= "development"

require './config/environment'
require 'sinatra/activerecord/rake'

# Type 'rake -T' on your command line to see the available rake tasks.

task :pry do 
  require_relative './config/environment'
  Pry.start
end 
