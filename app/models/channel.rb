
class Channel < ActiveRecord::Base 
	belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
	belongs_to :recipient, :foreign_key => :recipient_id, class_name: 'User'
	has_many :messages, dependent: :destroy

	validates_uniqueness_of :sender_id, :scope => :recipient_id

	scope :involving, -> (user) do
    where("channels.sender_id =? OR channels.recipient_id =?",user.id,user.id)
  end

  scope :between, -> (sender_id,recipient_id) do
    where("(channels.sender_id = ? AND channels.recipient_id =?) OR (channels.sender_id = ? AND channels.recipient_id =?)", sender_id,recipient_id, recipient_id, sender_id)
  end

end