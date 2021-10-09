class TiersController < ApplicationController
  
    def index
        @tiers = Tier.find_by(params[:tier_id])      
    end

    def new
                
        @tier = Tier.new(tier_params)
        
       
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
        render tiers_path(tier)
    end
    def destroy
        Tier.destroy(params[:id])
        redirect_to tiers_path
    end
    private

    
    def tier_params
        params.require(:tier).permit(:flavor, :filling, :frosting, :size)
    end
end