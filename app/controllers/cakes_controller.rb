class CakesController < ApplicationController
    before_action :set_order
    before_action :set_cake, only: [:show, :edit, :update, :destroy]

    def index
        @cakes = @order.cakes
    end

    def new
        @cake = @order.cakes.build
    end
    def create
       @cake = @order.cakes.build(cake_params)
       if @cake.save
        redirect_to order_cakes_path(@order)
       else 
        render :new
       end
     end
    def show
           
    end
    
    def edit        
        
    end

    def update
        if @cake.update(cake_params)
            redirect_to order_cake_path(@order)
        cake.update(cake_params)
        else
            render :edit
        end
    end

    def destroy
        @cake.destroy
        redirect_to order_cakes_path(@order)
    end

    private
   
    def set_order
        @order = Order.find(params[:order_id])
    end
    def set_cake
        @cake = @order.cakes.find(params[:id])
     end

    def cake_params
      params.require(:cake).permit(:title, :number_tiers, :order_id)
    end  
    
end