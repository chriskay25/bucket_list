class DestinationsController < ApplicationController

  get '/destinations/new' do
    auth
    erb :'/destinations/new'
  end 

  get '/destinations' do
    auth
    @destinations = @user.destinations.all
    erb :'/destinations/index'
  end 

  post '/destinations' do
    @user = current_user
    dest = Destination.new(city: params[:city], country: params[:country])
    if dest.valid?
      @user.destinations << dest
      redirect "/users/#{@user.id}"
    else
      @errors = dest.errors.messages
      erb :'/destinations/new'
    end 
  end 

  get '/destinations/:id' do
    auth
    @dest = Destination.find(params[:id])
    if @user.destinations.include?(@dest)
      erb :'/destinations/show'
    else
      redirect "/users/#{@user.id}"
    end 
  end 

  patch '/destinations/:id' do
    @dest = Destination.find(params[:id])
    @dest.update(city: params[:city], country: params[:country])
    redirect "/destinations/#{@dest.id}"
  end 

  get '/destinations/:id/edit' do
    auth
    @dest = Destination.find(params[:id])
    if @user.destinations.include?(@dest)
      erb :'/destinations/edit'
    else
      redirect "users/#{@user.id}"
    end 
  end 

  delete '/destinations/:id' do
    dest = Destination.find(params[:id])
    dest.delete
    redirect "/destinations"
  end
  
end 