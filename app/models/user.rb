class User < ApplicationRecord
	has_secure_password
	has_many :personal_items
	has_many :items, through: :personal_items
	validates_associated :personal_items



# mass assignment
# 	def personal_items_attributes=(personal_items_attributes)
# 		personal_items_attributes.values.each do |i, personal_item_attributes|
# 			self.personal_items.build(personal_items_attributes)
# 			 # personal_item = PersonalItem.find_or_create_by(personal_item_attributes)
#       # self.personal_items << personal_item
# 		end
# 	end

# # mass assignment
# 	def items_attributes=(items_attributes)
# 		items_attributes.values.each do |i, item_attributes|
# 			# item = Item.find_or_create_by(item_attributes)
#       # self.items << item
# 			self.items.build(items_attributes)
# 		end
# 	end
end
