class ApplicationController < Sinatra::Base
	configure do
		set :public_folder, 'public'
		set :views, 'app/views'
		enable :sessions
		set :session_secret, "password_security"
	end

	helpers do

		def logged_in?
		  !!session[:id]
		end

		def current_user
		  @current_user ||= User.find(session[:id])
		end

		def error
			@error_message = params[:error]
		end

		# def public_channels 
		# 	Channel.where("channel_type = ?", "public")
		# end

		# def private_channels
		# 	Channel.where("channel_type= ?", "private")
		# end


	end

	get '/' do 
		erb :'channels/channels'
	end

end