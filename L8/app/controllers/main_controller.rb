class MainController < ApplicationController
  require 'prime'
  def input
  end

  def view
    @a_value = params[:a].to_i
    @new = Array.new
    @new = Prime.each(@a_value) { |p| @new << check(p,@a_value) }

  end

  def check(p,n)
    if 2**p - 1 <= n
      return "#{2**p-1}"
    end
  end
end

