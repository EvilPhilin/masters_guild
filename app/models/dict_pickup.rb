class DictPickup < ApplicationRecord
	validates :name, presence: true, length: { maximum: 32 }
	validates :description, length: { maximum: 512 }
	validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
