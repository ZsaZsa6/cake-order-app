class CakesController < ApplicationController
    def new
        @cake = Cake.new
    end
    def create
        Cake.create(cake_params)
    end
    def show
        @cakes = Cake.all
    end

    private

    def cake_params
      params.permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
   
end