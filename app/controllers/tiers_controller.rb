class TiersController < ApplicationController
    before_action :set_cake
    def index
        @tiers = Tier.all
    end
    def new
        @tier = @cake.tiers.build           
    end
    def create
        @tier = @cake.tiers.build(tier_params)
        if @tier.save
        render 'show'
        end
       
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

    def set_cake
        @cake = Cake.find_by(params[:cake_id])
    end
    
    def tier_params
        params.require(:tier).permit(:flavor, :filling, :frosting, :size, :cake_id)
    end
end