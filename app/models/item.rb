class Item < ApplicationRecord
	# has_many :categories
	has_many :personal_items
	has_many :users, through: :personal_items
end
