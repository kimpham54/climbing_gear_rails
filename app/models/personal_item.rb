class PersonalItem < ApplicationRecord
	belongs_to :user
	belongs_to :item

	validates :user_id, presence: true

  scope :last_updated, -> { order("updated_at desc")}	
  scope :last_acquired, -> { order("last_acquired desc")}

end
