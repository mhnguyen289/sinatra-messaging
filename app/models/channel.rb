
class Channel < ActiveRecord::Base 
	belongs_to :user

	has_many :message_channels
	has_many :messages, through: :message_channels

	
end