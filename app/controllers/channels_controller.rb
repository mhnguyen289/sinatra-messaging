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
	# 	binding.pry
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

	get '/channel/:id' do 

		@channel = Channel.find(params[:id])
		if logged_in?
			erb :'channels/show'
		else
			redirect '/login'
		end
	end

	post '/channel/:id' do 
		binding.pry
		if params[:content] != ""
			@content = current_user.channels.create(:content=>params[:content])
			redirect '/channels'
		else
			redirect '/channels/show'
		end
	end

end