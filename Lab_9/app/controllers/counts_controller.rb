class CountsController < ApplicationController
  require 'prime'
  def index
  end

  def view
    @p = params[:a].to_i
    @result = Array.new()
    Prime.each do |x|
      i = 2**x - 1
      if i > @p then
        break
      else
        @result << i
      end
    end

    respond_to do |format|
      format.html
      @result
      format.json do
        render json:
                   {type: @result.class.to_s, value: @result}
      end
    end
  end

  def check(p,n)
    if 2**p - 1 <= n
      return "#{2**p-1}"
    end
  end
end
