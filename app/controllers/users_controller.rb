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

end 