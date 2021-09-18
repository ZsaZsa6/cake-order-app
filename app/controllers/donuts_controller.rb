class DonutsController < ApplicationController
    def new
        @donut = Donut.new
    end
    def create
        @donut = Donut.create(donut_params)
    end
    private
    def donut_params
        params.require(:donut).permit(:flavor, :frosting, :filling, :sprinkles, :product_id)
    end

end
