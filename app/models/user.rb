class User < ApplicationRecord
	has_many :personal_items
	has_many :items, through: :personal_items
	validtes_associated :personal_items

# mass assignment
	def personal_items_attributes=(personal_items_attributes)
		# raise personal_items_attributes.inspect
		personal_items_attributes.each do |i, personal_item_attributes|
			self.personal_items.build(personal_items_attributes)
		end
	end

# mass assignment
	def items_attributes=(items_attributes)
		items_attributes.each do |i, item_attributes|
			self.items.build(items_attributes)
		end
	end
end
