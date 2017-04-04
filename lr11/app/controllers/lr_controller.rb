require 'prime'

class LrController < ApplicationController
  def input
  end

  def view
    @p = params[:val].to_i
    @res = Array.new()
	if Number.last != nil
	  @l = Number.last.value
	  @i = Number.last.power
	end
	if Number.last == nil
	  Prime.each do |x|
        i = 2**x - 1
	    if i > @p
	      break
	    else
		  Number.create(power: x, value: i)
        end
	  end
	  @res = Number.all
	elsif @l >= @p
	  @res = Number.where("value <= ?", @p)
	elsif @l < @p
	  Prime.each do |x|
	    if x > @i
	      i = 2**x - 1
		  if i > @p
		    break
		  else
	        Number.create(power: x, value: i)
		  end
	    end
	  end
	  @res = Number.all
	end
	respond_to do |format|
	  format.xml { render :xml => @res}
	  format.html
	end
  end
  
  def last
    if Number.last != nil
	  @res = Number.last.value
	else
	  @res = 'Database is empty'
	end
  end
end
