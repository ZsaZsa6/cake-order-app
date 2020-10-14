class CakesController < ApplicationController
    before_action :set_cake, only: [:show, :edit, :update, :destroy]
    def new
        @cake = Cake.new(cake_id: [cake.id])
    end
    def create
        Cake.create(cake_params)
    end
    def show
        @cake = Cake.find_by()
    end

    private
    def set_cake
    
    @cake = Cake.find(params[:id])

    end

    def cake_params
      params.require(:cake).permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
    
end