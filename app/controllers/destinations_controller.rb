class DestinationsController < ApplicationController

  get '/destinations/new' do
    auth
    erb :'/destinations/new'
  end 

  get '/destinations' do
    auth
    @destinations = current_user.destinations.all if !current_user.destinations.empty?
    erb :'/destinations/index'
  end 

  post '/destinations' do
    dest = Destination.new(city: params[:city], country: params[:country])
    if dest.valid?
      current_user.destinations << dest
      redirect "/users/#{current_user.id}"
    else
      @errors = dest.errors.messages
      erb :'/destinations/new'
    end 
  end 

  get '/destinations/:id' do
    auth
    @dest = Destination.find(params[:id])
    erb :'/destinations/show'
  end 

  patch '/destinations/:id' do
    @dest = Destination.find(params[:id])
    @dest.update(city: params[:city], country: params[:country])
    redirect "/destinations/#{@dest.id}"
  end 

  get '/destinations/:id/edit' do
    auth
    @dest = Destination.find(params[:id])
    erb :'/destinations/edit'
  end 

  delete '/destinations/:id' do
    dest = Destination.find(params[:id])
    dest.delete
    redirect "/destinations"
  end
  
end 