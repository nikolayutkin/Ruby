class LoginController < ApplicationController
  def new
  end

  def create
   if user = User.authenticate(params[:login], params[:password]) 

	session[:current_user_id] = user.id 
     redirect_to root_url
   else
     redirect_to '/login/new'
   end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_url
  end
end

