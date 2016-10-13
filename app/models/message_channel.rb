class MessageChannel < ActiveRecord::Base 

belongs_to :message
belongs_to :channel
	
end