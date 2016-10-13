# require './config/environment'
class Message < ActiveRecord::Base 
	belongs_to :user
	has_one :channel, through: :message_channel
	has_one :message_channel


end