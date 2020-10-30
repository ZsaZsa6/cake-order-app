class CakesController < ApplicationController
    # before_action :set_cake, only: [:edit, :update, :destroy]
    def new
        @cake = Cake.new
    end
    def create
        @cake = Cake.create(cake_params)
       render 'cake'

    end
    def show
       @cake = Cake.find_by(params[:id])
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
    # def set_cake
    #    @cake = Cake.find_by(params[:id])
    # end

    def cake_params
      params.require(:cake).permit(:title, :number_tiers, :order_id)
    end  
    
end