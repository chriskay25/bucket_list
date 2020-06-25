class UsersController < ApplicationController

  get '/users/new' do 
    erb :'users/new'
  end

  post '/users' do
    # raise params.inspect
  end 

end 