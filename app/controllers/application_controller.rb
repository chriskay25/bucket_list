class ApplicationController < Sinatra::Base

  configure do
    set :views, 'app/views'
    set :public_folder, 'public'
    enable :sessions
    set :session_secret, SESSION_SECRET
  end 

  get '/' do
    redirect "/users/#{current_user.id}" if logged_in?
    erb :welcome 
  end   

  helpers do

    def logged_in?
      !!session[:user_id]
    end 
    
    def current_user
      User.find(session[:user_id])
    end 

    def auth
      redirect "/" if !logged_in?
      @user = current_user
    end 

  end 

end 