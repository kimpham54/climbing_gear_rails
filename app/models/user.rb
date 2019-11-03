class User < ApplicationRecord
	has_many :personal_items
	has_many :items, through: :personal_items
end
