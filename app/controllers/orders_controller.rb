class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end
    def show
        @customer_orders = @orders.each do |order|
            customer_order.find_by(order_id: @order.id, customer_id: current_customer.id)
        end        
    end
    def new 
        @order = order.new(customer_id: [current_customer.id])
    end 
end