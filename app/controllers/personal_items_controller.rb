class PersonalItemsController < ApplicationController
	before_action :authenticate

  def new
    @personal_item = PersonalItem.new
  end

	def index
    authenticate
		@personal_item = PersonalItem.all
	end

  def create
    # @item = Item.find(params[:item_id])
    @personal_item = PersonalItem.new(personal_item_params)
    # @personal_item.user = current_user
    # @personal_item.item = @item

    if @personal_item.save
      redirect_to @personal_item
    else
      render :new
    end
  end
	  
	  def show
    	@personal_item = PersonalItem.find(params[:id])
      redirect_to personal_items_path
  	end

  	def update
  		# TODO
  	end

  	  private

  def personal_item_params
    params.require(:personal_item).permit(:note, :date_acquired, :status, :item_id, :user_id) # item_id:[],
  end
end
