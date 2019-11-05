class ApplicationController < ActionController::Base
	helper_method :logged_in?
	helper_method :current_user
	helper_method :authorize

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

	def authorize
        if params[:user_id].to_i != current_user.id
        flash[:danger] = "You are not authorized to see this page."
        redirect_to login_path
        end
    end


	def authenticate
		if !logged_in?
			redirect_to login_path
		end
	end
end
