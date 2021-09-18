class CupCakesController < ApplicationController
    def new 
        @cupcake = Cupcake.new
    end
    def
        create
        @cupcake = Cupcake.(cupcake_params)
    end
end
