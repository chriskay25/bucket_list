class UsersController < ApplicationController

  get '/users/new' do 
    erb :'users/new'
  end

  get '/users/:id' do
    if current_user.id == params[:id].to_i
      @user = User.find(params[:id])
      erb :'users/show'
    else
      redirect '/'
    end 
  end 

  get '/users/:id/edit' do
    if current_user.id == params[:id].to_i
      erb :'/users/edit'
    end 
  end 

  patch '/users/:id' do
    auth
    user = User.find(params[:id])
    user.update(username: params[:username], password: params[:password])
  end 

  delete '/users/:id/delete' do
    auth
    user = User.find(params[:id])
    user.delete
    redirect '/'
  end 

end 