require 'prime'

class LrController < ApplicationController
  def input
  end

  def view
    @p = params[:val].to_i
	@res = Array.new()
	Prime.each do |x|
      i = 2**x - 1
	  if i > @p then
	   break
	  else
	    @res << i
      end
	end
	respond_to do |format|
	  format.xml { render :xml => @res}
	  format.html
	end
  end
end
