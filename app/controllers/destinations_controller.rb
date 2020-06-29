class DestinationsController < ApplicationController

  get '/destinations/new' do
    erb :'/destinations/new'
  end 

  post '/destinations' do
    dest = Destination.create(city: params[:city], country: params[:country])
    redirect "/destinations/#{dest.id}"
  end 

  get '/destinations/:id' do
    @dest = Destination.find(params[:id])
    erb :'/destinations/show'
  end 
  

end 