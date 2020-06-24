class ApplicationController < Sinatra::Base

  configure do
    set :views, 'app/views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, 'secret'
  end 

  get '/' do
    "Welcome! Start your bucket list!"
  end   

end 