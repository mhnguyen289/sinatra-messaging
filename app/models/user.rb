# require './config/environment'
class User < ActiveRecord::Base

	has_many :channels, :foreign_key => :sender_id
	has_many :messages

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
end