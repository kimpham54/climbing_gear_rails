class PersonalItemsController < ApplicationController
	before_action :authenticate
  before_action :get_personal_item, only: [:edit, :update, :show, :destroy]

  def new
    @personal_item = PersonalItem.new
  end

	def index
    authenticate
    authorize
		# @personal_item = PersonalItem.all
    if params[:user_id]
      # raise params.inspect
      @personal_items = User.find(params[:user_id]).personal_items
      @personal_items = @personal_items.last_updated 
      # last_updated scope from model
    else
      @personal_items = PersonalItem.all
	end
end

  def create
    # @item = Item.find(params[:item_id])
    @personal_item = PersonalItem.new(personal_item_params)
    # @personal_item.user = current_user
    # @personal_item.item = @item
    if @personal_item.save
      redirect_to user_personal_items_path(current_user) # not personal_items_path
    else
      render :new
    end
  end
	  
	  def show
      redirect_to user_personal_items_path(current_user) # not personal_items_path
      # redirect_to personal_items_path
      # show e.g. http://localhost:3000/personal_items/1/ redirects to the main index nested route
  	end

  	def edit
  	end

    def destroy
      @personal_item.destroy
      redirect_to user_personal_items_path(current_user)
    end

    def update
      @personal_item.update(personal_item_params)
      redirect_to user_personal_items_path(current_user)
      # patch
    end

  private

  def personal_item_params
    params.require(:personal_item).permit(:note, :date_acquired, :status, :item_id, :user_id) # item_id:[],
  end

  def get_personal_item
    @personal_item = PersonalItem.find(params[:id])
  end
end
