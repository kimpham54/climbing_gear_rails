class PersonalItem < ApplicationRecord
	belongs_to :user
	belongs_to :item

	validates :user_id, presence: true
	validates_uniqueness_of :user_id, :scope => :item_id

end
