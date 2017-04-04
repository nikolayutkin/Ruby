require 'prime'

class LrController < ApplicationController
 
  def exit
    session[:current_user_id] = nil if session[:current_user_id]
    redirect_to '/'
  end
  
  def login
    if @usr = User.authenticate(params[:l], params[:p])
      session[:current_user_id] = @usr.id
      redirect_to '/lr/in'
    else
      redirect_to '/'
    end
  end

  def auth
  end

  def in
  end

  def out
    t=params[:val].to_i
    if t!=0 && session[:current_user_id]
    @p = params[:val].to_i
	@result = Array.new()
	Prime.each do |x|
      i = 2**x - 1
	  if i > @p then
	   break
	  else
	    @result << i
      end
	end
    else
      render "unlog.html"
    end
  end
end
