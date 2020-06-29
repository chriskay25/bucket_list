class DestinationsController < ApplicationController

  get '/destinations/new' do
    erb :'/destinations/new'
  end 

  get '/destinations' do
    @destinations = Destination.all
    erb :'/destinations/index'
  end 

  post '/destinations' do
    dest = Destination.new(city: params[:city], country: params[:country])
    if dest.save
      redirect "/destinations/#{dest.id}"
    else
      @errors = dest.errors.messages
      erb :'/destinations/new'
    end 
  end 

  get '/destinations/:id' do
    @dest = Destination.find(params[:id])
    erb :'/destinations/show'
  end 

  post '/destinations/:id' do
    @dest = Destination.find(params[:id])
    @dest.update(city: params[:city], country: params[:country])
    redirect "/destinations/#{@dest.id}"
  end 

  get '/destinations/:id/edit' do
    @dest = Destination.find(params[:id])
    erb :'/destinations/edit'
  end 
  

end 