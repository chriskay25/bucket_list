class ExperiencesController < ApplicationController

  get '/experiences/new' do
    auth
    erb :'experiences/new'
  end 

  get '/experiences' do
    auth
    @experiences = current_user.experiences.all if !current_user.experiences.empty?
    erb :'/experiences/index'
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

  get '/experiences/:id' do
    auth
    @exp = Experience.find(params[:id])
    erb :'/experiences/show'
  end 

  patch '/experiences/:id' do
    @exp = Experience.find(params[:id])
    @exp.update(name: params[:name])
    redirect "/experiences/#{@exp.id}"
  end 

  get '/experiences/:id/edit' do
    auth
    @exp = Experience.find(params[:id])
    erb :'/experiences/edit'
  end 

  delete '/experiences/:id' do
    exp = Experience.find(params[:id])
    exp.delete
    redirect "/experiences"
  end
  

end 