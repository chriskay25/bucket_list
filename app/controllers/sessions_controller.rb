class SessionsController < ApplicationController

  get '/signup' do
    erb :signup
  end 

  post '/signup' do
    user = User.new(username: params[:username], password: params[:password])
    if user.save  
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else  
      redirect '/'
    end 
  end 

  get '/login' do
    erb :login
  end 

  post '/login' do
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else
      @failed = true
      erb :login
    end 
  end 

  

end 