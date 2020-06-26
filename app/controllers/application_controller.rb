class ApplicationController < Sinatra::Base

  configure do
    set :views, 'app/views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, 'secret'
  end 

  get '/' do
    erb :welcome
  end   

  helpers do

    def logged_in?
      !!session[:user_id]
    end 

    def auth
      redirect "/" if !logged_in?
    end 

    def current_user
      User.find(session[:user_id])
    end 

  end 

end 