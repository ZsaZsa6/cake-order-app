class OrdersController < ApplicationController
   
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
        order = Order.create(order_params)
        
        redirect_to  '/cakes/new'    
        
    end

    def edit
        @order = Order.find(params[:id])
    end
    
    def update
       order = Order.find(params[:id])
       order.update(order_params)
       redirect_to order_path(order)         
    end

    def destroy
        Order.destroy(params[:id])
        redirect_to orders_path
    end

    
    
    private
    def order_params
        params.require(:order).permit(:cake_id, :description, :customer_id)
    end 
     
    
end