
class Message < ActiveRecord::Base 
	belongs_to :user
	belongs_to :channel

	validates_presence_of :content, :channel_id, :user_id

end