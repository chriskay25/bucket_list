class UsersController < ApplicationController

  get '/users/:id' do
    auth
    if current_user.id == params[:id].to_i
      erb :'/users/show'
    else
      redirect '/'
    end 
  end 

  get '/users/:id/edit' do
    auth
    if current_user.id == params[:id].to_i
      erb :'/users/edit'
    else
      redirect '/'
    end 
  end 

  patch '/users/:id' do
    auth
    user = User.find(params[:id])
    user.update(username: params[:username], password: params[:password])
    redirect "/users/#{user.id}"
  end 

  get '/users/:id/delete' do
    auth
    erb :'/users/delete'
  end 

  delete '/users/:id' do
    user = User.find(params[:id])
    session.clear && user.delete
    redirect '/'
  end 
end 