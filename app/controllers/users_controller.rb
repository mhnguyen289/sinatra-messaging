class UsersController < ApplicationController

	get '/signup' do 

		if logged_in?
			redirect '/channels'
		else
			erb :'users/signup'
		end
	end

	post '/signup' do 
		
		@user = User.new(params)
		if @user.save
			session[:id] = @user.id
			redirect '/login'
		else
			redirect '/signup'
		end
	end

	get '/login' do
		if logged_in?
			redirect '/channels'
		else
			erb :'users/login'
		end
	end

	post '/login' do
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			session[:id] = @user.id
			redirect '/channels'
		else
			redirect '/signup'
		end
	end

	get '/logout' do
    if logged_in?
      session.destroy
      redirect to '/login'
    else
      redirect to '/'
    end
  end


end