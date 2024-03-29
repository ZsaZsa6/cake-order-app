class SessionsController < ApplicationController

    def new

    end 
  
    def create
      if customer = Customer.find_by(username: params[:username])
        if customer && customer.authenticate(params[:password])
          session[:customer_id] = customer.id
          
          redirect_to customer_path(customer) 
        end 
      else  
        flash[:alert] =  "Please try again or Sign Up."
        redirect_to login_path
      end
    end

    def destroy
        session[:customer_id] = nil 
        redirect_to login_path 
    end 
    
end
