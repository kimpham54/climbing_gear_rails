class ApplicationController < ActionController::Base
	helper_method :logged_in?
	helper_method :current_user

	private
	
	def logged_in?
		!!current_user
		# double bang keep track of who is logged in
	end

	def current_user
		User.find_by(id: session[:user_id])
	end

	def log_in(user)
		session[:user_id] = user.id
	end
end
