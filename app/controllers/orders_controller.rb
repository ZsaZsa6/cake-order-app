class OrdersController < ApplicationController
    def index
        @order = Order.new       
    end

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
        params.permit(:order_id,:description, :created_at, :updated_at, :customer_id, :cake_id)
      end 
end