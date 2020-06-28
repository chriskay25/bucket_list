class BucketsController < ApplicationController

  get '/buckets/new' do
    auth
    erb :'buckets/new'
  end 

  get '/buckets/:id' do
    erb :'buckets/show'
  end 

end 