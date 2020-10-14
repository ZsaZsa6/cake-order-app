class CakesController < ApplicationController
    before_action :set_cake, only: [:show, :edit, :update, :destroy]
    def new
        @cake = Cake.new
    end
    def create
        cake = Cake.create(cake_params)
        redirect_to cake_path(cake)
    end
    def show
        @cake = Cake.find(params[:id])
    end
    def edit
        
        @cake = Cake.find(params[:id])
    end
    def update
        cake = Cake.find(params[:id])
        cake.update(cake_params)
        redirect_to cake_path(cake)

    end

    def destroy
        Cake.destroy(params[:id])
        redirect_to cakes_path
    end

    private
    def set_cake
       @cake = Cake.find(params[:id])
    end

    def cake_params
      params.require(:cake).permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
    
end