class User < ApplicationRecord
	has_secure_password
	has_many :personal_items
	has_many :items, through: :personal_items
	validates_associated :personal_items

end
