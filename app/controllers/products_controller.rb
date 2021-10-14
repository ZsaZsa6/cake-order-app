class ProductsController < ApplicationController
    def new
        @product = Product.new(product_params)
    end
    def create
        @product = Product.create(product_params)
    end

    def show
        @product = Product.find(params[:id])
    end

    private
    def product_params
        params.require(:product).permit(:type, :donut, :tier, :cupcake)
    end


    end