class Master < ApplicationRecord
	has_one :user
	
	validates :name, presence: true, length: { maximum: 32 }
	validates :surname, presence: true, length: { maximum: 32 }
	validates :about_me, length: { maximum: 512 }
end
