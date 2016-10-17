class ChannelsController < ApplicationController

	get '/channels' do 
		@channels = Channel.all
		if logged_in?
			# @user = find_by(session[:id])
			erb :'channels/channels'
		else
			redirect '/login'
		end
	end

	# post '/channels' do
	# 	@channel = Channel.find(params[:id])
	# end
 

	get '/channels/new' do 
		if logged_in?
			erb :'channels/new'
		else
			redirect '/login'
		end
	end

	post '/channels/new' do 
		
		if params[:title] != ""
			@channel = current_user.channels.create(:title=>params[:title])
			redirect '/channels'
		else
			redirect '/channels/new'
		end
	end

	get '/channels/:id' do 

		@channel = Channel.find(params[:id])
		if logged_in?
			erb :'channels/show'
		else
			redirect '/login'
		end
	end

	post '/channels/:id' do 
		
		
		if params[:message] != ""
		@channel = Channel.find(params[:id])
		@channel.messages.create(:content=>params[:content])#, :user_id => current_user.id)
			redirect "/channels/#{@channel.id}"
		else
			redirect '/channels/show'
		end
	end

	get '/channels/:id/edit' do
		
		if logged_in?
			@channel = Channel.find(params[:id])
			
			erb :'channels/edit'
		else
			redirect '/login'
		end
	end
	
	get '/channels/:id/delete' do
		if logged_in?
			@channel = Channel.find(params[:id])
			erb :'channels/delete'
		else
			redirect '/login'
		end
	end

	post '/channels/:id/delete' do
		@channel = Channel.find(params[:id])
		@channel.delete
		redirect '/channels'
	end

end