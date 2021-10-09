class CupCakesController < ApplicationController
    def new 
        @cupcake = Cupcake.new
    end
    # def create
    #     @cupcake = Cupcake.create(cupcake_params)
    # end
    private
    def cupcake_params
        params.require(:cupcake).permit(:flavor, :frosting, :filling, :sprinkles, :product_id)
    end
end
