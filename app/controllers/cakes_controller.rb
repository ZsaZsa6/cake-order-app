class CakesController < ApplicationController
    before_action :set_order
    before_action :set_orders
    before_action :set_cake, only: [:show, :edit, :update, :destroy]

    def index
        @order = Order.find(params[:order_id])
        @cakes = @order.cakes
    end

    def new
        @cake = Cake.new
    end
    
    def create
       @cake = Cake.create(cake_params)
       if @cake.save
        render 'show'
       else 
        render 'new'
       end
     end
    def show
        @cake = Cake.find_by(params[:id])
    end
    
    def edit
        @cake = Cake.find_by(params[:id])        
        
    end

    def update
        cake = Cake.find(params[:id])
        if cake.update(cake_params)
        render 'cakes_path(cake)'
        end
    end

    def destroy
        @cake.destroy
        redirect_to cakes_path
    end

    private
   
    def set_order
        @order = Order.find_by(id: params[:order_id])
    end
    def set_orders 
        @orders = current_customer.orders 
    end
    def set_cake
        @cake = @order.cakes.find(params[:id])
     end

    def cake_params
      params.require(:cake).permit(:title, :number_tiers, :order_id)
    end  
    
end