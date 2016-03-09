class ReportsController < ApplicationController
  def index
  	@users = User.all.sort
  	@order_total_count_array = [] 
  	@user_total_count_array = []
	@users.each do |user|
		@user_name = user.name
		@orders = Order.where(:user_id => user.id)
		@orders_count = @orders.count
		@user_total_count = 0
		@orders.each do |order|
			@comments = Comment.where(:order_id => order.id)
			@order_total_count = 0
			@comments.each do |comment|
				@menu_id = comment.menu_id
				@comment_qty = comment.qty
				@menu_id_price = Menu.find(@menu_id).price
				@order_total_count = @order_total_count + (@comment_qty * @menu_id_price)
			end
			@order_total_count_array << @order_total_count
			@user_total_count = @user_total_count + @order_total_count
		end
		@user_total_count_array << @user_total_count
	end
  end

  def show
  	@try = Hash.new
  	@users = ["a","b","c"]
  	
  	@users.each do |h|
  		@try[h] = [2,2]
  	end
  	
  


  end

end
