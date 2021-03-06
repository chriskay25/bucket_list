class SessionsController < ApplicationController

  get '/signup' do
    redirect "/users/#{current_user.id}" if logged_in?
    erb :signup
  end 

  post '/signup' do
    user = User.new(username: params[:username], password: params[:password])
    if user.save  
      session[:user_id] = user.id
      redirect "/users/#{user.id}"
    else  
      @errors = user.errors.messages
      erb :signup
    end 
  end 

  get '/login' do
    redirect "/users/#{current_user.id}" if logged_in?
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

  get '/logout' do
    session.clear
    redirect '/'
  end 



end 