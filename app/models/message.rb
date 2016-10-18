
class Message < ActiveRecord::Base 
	belongs_to :user
	belongs_to :channel

	validates_presence_of :body, :channel_id, :user_id

end