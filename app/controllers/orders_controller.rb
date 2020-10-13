class OrdersController < ApplicationController
   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
    end

    def show
       @orders = Order.all    
    end

    def create 
        Order.create(order_params)
    end

    
    
    private
    def order_params
        params.permit(:order_id, :description, :customer_id)
    end 
end