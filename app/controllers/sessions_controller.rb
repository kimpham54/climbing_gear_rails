class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by(username: params[:username]) #must make sure using find_by is unique
		if @user && @user.authenticate(params[:password])
			flash[:success] = "Hello #{@user.name}"
			log_in(@user)
			redirect_to @user
		else
			flash[:danger] = "Sorry wrong credentials."
			redirect_to login_path

		end

	end


	def destroy
		session.clear
		redirect_to login_path
	end

end
