class Master < ApplicationRecord
	validates :name, :surname, presence: true
	validates :name, :surname, length: { maximum: 32 }
	validates :about_me, length: { maximum: 512 }
end
