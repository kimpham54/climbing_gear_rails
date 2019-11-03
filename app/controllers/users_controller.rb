class UsersController < ApplicationController
  def new
    @user = User.new
  end

    def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
    	redirect_to @user # /uesrs/#{@user.id}
    	# same as redirect_to user_path(@user) or link_to @user.name, @user
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :personal_items_attributes => [:note, :date_acquired, :status, :item_id, :user_id], :items_attributes => [:name, :brand, :geartype])
  end
end