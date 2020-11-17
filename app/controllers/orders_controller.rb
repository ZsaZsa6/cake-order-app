class OrdersController < ApplicationController
   before_action :set_order, only: [:show, :edit, :update, :destroy]

   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
        2.times {@order.cakes.build}
        
    end

    def index
        
       @orders = current_customer.orders
       order_id = Order.find_by(params[:id])
    
    end

    def create
       @order = Order.new
      
       if @order.save!
        render order_cake_path(@order)
       end
    end

    def edit
        @order = Order.find(params[:id])
        
    end
    def show
        @order = Order.find_by(params[:id])
    end
    def update
       @order = Order.find(params[:id])
       @order.update(order_params)
       render 'show'       
    end

    def destroy
        Order.destroy(params[:id])
        redirect_to orders_path
    end

    
    
    private
   
    def order_params
        params.require(:order).permit(:description, :customer_id, cake_attributes: [:title, :number_tiers])
    end 
    def set_order
        @order = Order.find(params[:order_id])
    end
    
end