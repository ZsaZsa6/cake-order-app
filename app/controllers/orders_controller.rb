class OrdersController < ApplicationController
    def index
        @orders = Order.all
              
    end

    def show
        @customer_orders = @orders.each do |order|
            @order.find_by(order_id: @order.id, customer_id: current_customer.id)
        end          
    end
    
    def new 
        @order = order.new(customer_id: [current_customer.id])
    end
    
    private
    def order_params
        params.permit(:order_id,:description, :created_at, :updated_at, :customer_id, :cake_id)
      end 
end