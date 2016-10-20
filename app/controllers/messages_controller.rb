

class MessagesController < ApplicationController

	get '/messages' do
		erb :'messages/messages'
	end

	get '/messages/:id' do
		
		
		@user = User.find(params[:id])
		if logged_in?	
			erb :"/messages/messages"
		else
			redirect '/channels'
		end
	end

	post '/messages/:id' do
		if params[:content] !=
		@user = User.find(params[:id])

		
			@user.messages.create(:content=>params[:content] )
			redirect "/messages/#{@user.id}"
		else
			redirect 'channels/channels'
		end
	end


	get '/channel/message/:id' do
		@user = User.find(params[:id])
		if logged_in?
			erb :'message_channels/message_channels'
		else
			redirect '/channel/:id'
		end
	end

	post '/channel/message/:id' do
		if params[:content] != ""
			@user = User.all.find(params[:id])
			@user.messages.create(:content=>params[:content], :username => current_user.username)

			redirect "/channel/message/#{@user.id}"
		else
			redirect '/channel/:id'
		end
	end

end
