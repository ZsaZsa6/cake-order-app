class CakesController < ApplicationController
    def new
        @cake = Cake.new(cake_id: [order.id])
    end
    def create
        Cake.create(cake_params)
    end
    def show
        @cake = Cake.find(param[:id])
    end

    private

    def cake_params
      params.permit(:tiers, :flavors, :fillings, :frosting, :size)
    end  
   
end