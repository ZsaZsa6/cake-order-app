class ProductsController < ApplicationController
    def new
        @product = Product.new
    end
    def create
        @product = Product.create
    end

    def show
        @product = Product.find(params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:type)
    end
end