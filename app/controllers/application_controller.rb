class ApplicationController < Sinatra::Base

  configure do
    set :views, 'app/views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, SESSION_SECRET
  end 

  get '/' do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
      erb :welcome
    end 
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