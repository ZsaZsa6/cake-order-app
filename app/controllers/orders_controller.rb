class OrdersController < ApplicationController
   
    def show
       @customer_orders = @orders.each do |order|
            @order.find_by(customer_id: current_customer.id)
        end      
    end
    def create 

    end


    def new 
        @order = Order.new(customer_id: [current_customer.id])
    end
    
    private
    def order_params
        params.require(:order).permit(:order_id, :description)
    end 
end