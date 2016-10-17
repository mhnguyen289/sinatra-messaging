# require './config/environment'
class User < ActiveRecord::Base

	has_many :messages
	has_many :channels


  validates :username, uniqueness: true
  validates :username, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password_digest, presence: true
  has_secure_password
end