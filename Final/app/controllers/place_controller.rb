class PlaceController < ApplicationController
layout "api", only: [:placemark,:bb]
  def main
  end

  def placemark
    # render js: "location.reload();"
  end
  
  def bb
  end
  
  def data
    render json: {x: current_user.x, y: current_user.y, name: current_user.login}
  end

  def save
    current_user.x = params[:x]
    current_user.y = params[:y]
    current_user.save
    current_user.touch
    render json: {x: @_current_user.x, y: @_current_user.y}
  end

  def all
    render json: { arr: User.all.map {|i| [x: i.x, y: i.y, name: i.login] } }
  end
  
  def time
    @result = User.all
    render "time.rss"
  end
  
end
