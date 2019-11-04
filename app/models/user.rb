class User < ApplicationRecord
	
	has_many :personal_items
	has_many :items, through: :personal_items
	
	validates :username, uniqueness: true
	validates_associated :personal_items
	validates :password, presence: true, on: :create
	has_secure_password

end
