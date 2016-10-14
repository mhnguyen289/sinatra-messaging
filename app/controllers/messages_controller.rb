

class MessagesController < ApplicationController

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
			@user = User.find(params[:id])
			@user.messages.update(:content=>params[:content])

			redirect "/channel/message/#{@user.id}"
		else
			redirect '/channel/:id'
		end
	end

end




# post '/channel/:id' do 
		
		
# 		if params[:message] != ""
# 		@channel = Channel.find(params[:id])
# 		@channel.messages.create(:content=>params[:content], :username => current_user.username, :user_id => current_user.id)
# 			redirect "/channel/#{@channel.id}"
# 		else
# 			redirect '/channels/show'
# 		end
# 	end

