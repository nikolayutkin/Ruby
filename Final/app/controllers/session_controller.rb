class SessionController < ApplicationController

  def auth
  end

  def login
  if @usr = User.authenticate(params[:l], params[:p])
    session[:current_user_id] = @usr.id
    redirect_to '/place/main'
  else
    redirect_to '/session/fail'
  end
  
  end

  def logout
    session[:current_user_id] = nil if session[:current_user_id]
    redirect_to '/'
  end
end
