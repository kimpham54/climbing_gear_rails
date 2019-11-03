class Item < ApplicationRecord
	# has_many :categories
	has_many :personal_items
	has_many :users, through: :personal_items
	validates_associated :personal_items

# mass assignment
	def personal_items_attributes=(personal_items_attributes)
		personal_items_attributes.each do |i, personal_item_attributes|
			self.personal_items.build(personal_items_attributes)
		end
	end

	def users_attributes=(users_attributes)
		users_attributes.each do |i, users_attributes|
			self.users.build(users_attributes)
		end
	end
end
