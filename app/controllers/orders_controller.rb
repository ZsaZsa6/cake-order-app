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

    def edit

    end
    
    def update
        @order.update(order_params)
          if @order.save
            redirect_to order_path(@order)
          else 
            flash[:notice] = "Your order was not updated"     
            render :edit
          end
    end
    
    
    private
    def order_params
        params.permit(:order_id, :description, :customer_id)
    end 
end