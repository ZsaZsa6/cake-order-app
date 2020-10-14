class OrdersController < ApplicationController
   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
    end

    def index
       @orders = Order.all    
    end

    def show
        @order = Order.find(params[:id])
    end

    def create 
        Order.create(order_params)
         if @order.save
            redirect_to @order  
         else
            render :new
         end      
        
    end

    def edit

    end
    
    def update
        @order.update(order_params)
          if @order.save
            redirect_to order_path(@order)
          else 
            
            render :edit
          end
    end
    
    
    private
    def order_params
        params.require(:order).permit(:cake_id, :description, :customer_id)
    end 
end