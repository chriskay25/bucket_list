class ExperiencesController < ApplicationController

  get '/experiences/new' do
    auth
    erb :'experiences/new'
  end 

  get '/experiences' do
    auth
    @experiences = @user.experiences.all
    erb :'/experiences/index'
  end 

  post '/experiences' do
    @user = current_user
    exp = Experience.new(name: params[:name])
    if exp.valid?
      @user.experiences << exp
      redirect "/users/#{@user.id}"
    else
      @errors = exp.errors.messages
      erb :'/experiences/new'
    end
  end 

  get '/experiences/:id' do
    auth
    @exp = Experience.find(params[:id])
    if @user.experiences.include?(@exp)
      erb :'/experiences/show'
    else
      redirect "/users/#{@user.id}"
    end 
  end 

  patch '/experiences/:id' do
    @exp = Experience.find(params[:id])
    @exp.update(name: params[:name])
    redirect "/experiences/#{@exp.id}"
  end 

  get '/experiences/:id/edit' do
    auth
    @exp = Experience.find(params[:id])
    if @user.experiences.include?(@exp)
      erb :'/experiences/edit'
    else
      redirect "users/#{@user.id}"
    end 
  end 

  delete '/experiences/:id' do
    exp = Experience.find(params[:id])
    exp.delete
    redirect "/experiences"
  end
  

end 