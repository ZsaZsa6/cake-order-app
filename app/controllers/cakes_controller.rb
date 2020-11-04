class CakesController < ApplicationController
    before_action :set_cake, only: [:show, :edit, :update, :destroy]
    before_action :set_order, only: [:new, :create]
    def new
        @cake = @order.cakes.build
    end
    def create
       @cake = @order.cakes.build(cake_params)
       if @cake.save
        render 'show'
       end
     end
    def show
       @cake = Cake.find_by(id: params[:id])
      
    end
    
    def edit        
        @cake = Cake.find_by(params[:id])
    end

    def update
        cake = Cake.find(params[:id])
        cake.update(cake_params)
        redirect_to cakes_path(cake)

    end

    def destroy
        Cake.destroy(params[:id])
        redirect_to cakes_path
    end

    private
    def set_cake
       @cake = Cake.find_by(params[:id])
    end

    def set_order
        @order = Order.find_by(params[:order_id])
    end

    def cake_params
      params.require(:cake).permit(:title, :number_tiers, :order_id)
    end  
    
end