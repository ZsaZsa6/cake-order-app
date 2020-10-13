class OrdersController < ApplicationController
   
    def new 
        @order = Order.new(customer_id: [current_customer.id])
    end

    def show
       @orders = Order.all    
    end

    def create 
        Order.create(description: params[:description])
         if @order.save
            redirect_to @order  
         else
            render :new
         end      
        
    end

    def edit

    end
    
    def update
        @order.update(description: params[:description])
          if @order.save
            redirect_to order_path(@order)
          else 
            
            render :edit
          end
    end
    
    
    # private
    # def order_params
    #     params.permit(:cake_id, :description, :customer_id)
    # end 
end