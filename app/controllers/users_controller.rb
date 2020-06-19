class UsersController < ApplicationController
  def index 
  end

  def create
  	user = User.new(user_params) 
  		if user.save
  			session[:user_id] = user.id
  			redirect_to '/dashboard'
  		else
  			flash[:register_errors]=users.errors.full_messages
  			redirect_to '/'
  		end
  			
  	end

  	private
  	def user_params
  		params.require(:user).permit(:cid, :uid, :password) #:password_con)
  	end
end
