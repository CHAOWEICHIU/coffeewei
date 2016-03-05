class CommentsController < ApplicationController
	before_action :authenticate_user!


	def create
		@order = Order.find(params[:order_id]) 
		@comment = @order.comments.create(params[:comment].permit(:menu_id, :price, :qty))



		redirect_to order_path(@order)


	end

	def destroy
		@order = Order.find(params[:order_id]) 
		@comment = @order.comments.find(params[:id])
		@comment.delete

		redirect_to order_path(@order)
	end


end
