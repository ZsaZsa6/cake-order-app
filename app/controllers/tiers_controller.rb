class TiersController < ApplicationController
    
    def index
        @tiers = Tier.all
    end
    def new
        @tier = Tier.new
    end
    def create
        @tier = Tier.create(tier_params)
        render 'show'
        
    end
    def show
       @tier = Tier.find_by(params[:id]) 
    end
    def edit
        @tier = Tier.find_by(params[:id])
    end
    def update
        tier = Tier.find(params[:id])
        tier.update(tier_params)
        redirect_to tiers_path(tier)
    end
    def destroy
        Tier.destroy(params[:id])
        redirect_to tiers_path
    end
    private
    
    def tier_params
        params.require(:tier).permit(:flavor, :filling, :frosting, :size, :cake_id)
    end
end