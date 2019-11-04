class PersonalItemsController < ApplicationController
	before_action :authenticate

	def index
		@personal_items = PersonalItem.all
	end
end
