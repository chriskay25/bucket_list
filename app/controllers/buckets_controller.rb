class BucketsController < ApplicationController

  get '/buckets/new' do
    auth
    erb :'buckets/new'
  end 

  post '/buckets' do
    event = Event.create(event: params[:event], note: params[:note])
    redirect "/users/current_user.id"
  end 

end 