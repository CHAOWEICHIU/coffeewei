class CommentsController < ApplicationController
	before_action :authenticate_user!


	def create
		@order = Order.find(params[:order_id]) 
		
		
		@comment = @order.comments.create(params[:comment].permit(:menu_id, :price, :qty))
		if @comment.save
	        redirect_to order_path(@order), notice: 'Order was successfully created.'
      	else
	    	flash[:notice]='How many do you want?'
	    	redirect_to order_path(@order)
      	end
	end

	def destroy
		@order = Order.find(params[:order_id]) 
		@comment = @order.comments.find(params[:id])
		@comment.delete

		redirect_to order_path(@order)
	end


end
