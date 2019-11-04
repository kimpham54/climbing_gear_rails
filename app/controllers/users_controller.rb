class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    authenticate
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      
      redirect_to @user # /uesrs/#{@user.id}
      # same as redirect_to user_path(@user) or link_to @user.name, @user
    else
      render :new
    end
  end

    def show
      authenticate
      @user = User.find(params[:id])
    end

  private

  def user_params
    params.require(:user).permit(:username, :name, :email, :password)
  end
  # clean up TODO
  # if nested forms :personal_items_attributes => [:note, :date_acquired, :status, :item_id, :user_id], :items_attributes => [:name, :brand, :geartype]
end