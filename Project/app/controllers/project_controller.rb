class ProjectController < ApplicationController

  before_filter :auth

  def view

    s1 = params[:ttt];

	res = Result.find_by_mas(s1)
	unless s1.nil?
	if res == true then
	   @result = res.result.split('_');
	else

		@result = Array.new();

	    @result = s1.split('_')

		Result.create(mas: s1, result: s1)
	end
	end
	respond_to do |format|
		format.html
		format.xml { render xml: Result.all.to_xml }
	end
  end


  private
  def auth
    unless User.find_by_id (session[:current_user_id])
      redirect_to '/login/new'
    end
  end

end
