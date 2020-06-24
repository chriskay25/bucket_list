ENV['SINATRA_ENV'] ||= 'development'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, {adapter: 'sqlite3', database: 'sqlite3:db/database.db'}
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end 

require_all 'app'