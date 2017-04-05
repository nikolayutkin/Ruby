class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :logged?, :except => [:auth, :login, :main, :fail]
  before_filter :admin?, :only => [:destroy, :all, :new, :create, :index, :bb]
  
def current_user
  @_current_user ||= session[:current_user_id] &&  User.find_by_id(session[:current_user_id])
end

def logged?
  unless current_user
    redirect_to '/session/auth'
  end
end

def admin?
  unless current_user.login == 'admin'
    redirect_to '/place/main'
  end
end

end
