class HomeController < ApplicationController
  def index
  	if member_signed_in?
  		redirect_to orders_path
  	else
  		redirect_to new_user_session_path
  	end
  end
end
