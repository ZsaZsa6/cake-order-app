class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update]
   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
    end

    def index
        
       @orders = current_customer.orders
    
    end

    def show
        
        @order = Order.find_by(id: params[:id])
        
    end

    def create 
       @order = Order.create(order_params)
       if @order.save!
        render 'show'
       end
    end

    def edit
        @order = Order.find(params[:id])
    end
    
    def update
       @order = Order.find(params[:id])
       @order.update(order_params)
       redirect_to order_path(@order)         
    end

    def destroy
        Order.destroy(params[:id])
        redirect_to orders_path
    end

    
    
    private
   
    def order_params
        params.require(:order).permit(:description, :customer_id)
    end 

    def set_order
        @order = Order.find(params[:id])
    end
    
     
    
end