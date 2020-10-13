class CakesController < ApplicationController
    def new
        @cake = Cake.new
    end
    # def create

    # end
    def show
        @cakes = Cake.all
    end

    private

    def cake_params
      params.permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
   
end