class OrdersController < ApplicationController
   before_action :set_order, only: [:show, :edit, :update, :destroy]


     def index
        
       @orders = current_customer.orders
       order_id = Order.find_by(params[:id])
    
    end
    
    def new 
        @order = Order.new(customer_id: [current_customer.id])
       
        
    end

    def create
    
      @order = Order.new(order_params)
       
    #    if @order.save!
        
        # redirect_to new_cake_tier_path(@order.cakes.last)
    #    end
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
        @order.destroy
        redirect_to orders_path
    end

    
    
    private
   
    def order_params
        params.require(:order).permit(:description, :customer_id, cakes_attributes: [:id, :title, :number_tiers])
    end 
    def set_order
        @order = Order.find(params[:id])
    end
    
end