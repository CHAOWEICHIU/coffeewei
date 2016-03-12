class OrdersController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  
  def welcome
  end

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all.order("visibility ASC")


  end

  def levelup
    @order = Order.find(params[:id])
    @order.levelup
    redirect_to orders_path
  end

  def leveldown
    @order = Order.find(params[:id])
    @order.leveldown
    redirect_to orders_path
  end
  
  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
    @comments = @order.comments.all
  end

  def report
    
    @sum = 0
    @orders = start_end(Order, date_start, date_end)
    @orders.each do |o|
      o.comments.each do |s|
        @sum = @sum + s.qty * Menu.find(s.menu_id).price
      end
    end
    @sum
  end




  # GET /orders/new
  def new
    @order = current_user.orders.build
    @order = Order.find(params[:id])
    redirect_to @order
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = current_user.orders.build

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_path, notice: 'Order was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id)
    end
end
