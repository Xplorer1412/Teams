class SessionsController < ApplicationController
  def create
  	user = User.find_by(cid:login_params[:cid])
  	if user && user.authenticate(login_params[:password])
  		session[:user_id] = user.id
  		redirect_to '/dashboard'
  	else
  		flash[:login_errors] = ['Invalid Credentials']
  		redirect_to '/'
  	end

  end

  private
   def login_params
   	params.require(:login).permit(:cid, :uid, :password)
   end
end
