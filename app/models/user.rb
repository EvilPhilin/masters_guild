class User < ApplicationRecord
	validates :email, presence: true, length: { maximum: 64 }, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates :username, presence: true, length: { maximum: 32 }
	validates :password, presence: true, length: {maximum: 32 }
	validates_confirmation_of :password
end
