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

end 