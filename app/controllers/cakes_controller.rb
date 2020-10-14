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
        @cake = Cake.find_by(params[:id])
    end
    def edit
    end
    def update
        
    end

    private
    def set_cake
    
    @cake = Cake.find(params[:id])

    end

    def cake_params
      params.require(:cake).permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
    
end