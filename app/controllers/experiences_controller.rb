class ExperiencesController < ApplicationController

  get '/experiences/new' do
    auth
    erb :'experiences/new'
  end 

  post '/experiences' do
    exp = Experience.new(name: params[:name])
    if exp.valid?
      current_user.experiences << exp
      redirect "/users/#{current_user.id}"
    else
      @errors = exp.errors.messages
      erb :'/experiences/new'
    end
  end 

end 