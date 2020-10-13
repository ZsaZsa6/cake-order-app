class OrdersController < ApplicationController
   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
        render '/cakes/new'

    end

    def show
       @orders = Order.all    
    end
    def create 

    end

    
    
    private
    def order_params
        params.require(:order).permit(:order_id, :description, :customer_id)
    end 
end