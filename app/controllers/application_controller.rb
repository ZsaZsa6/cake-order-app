class ApplicationController < ActionController::Base

    helper_method :logged_in?, :current_customer, :authorized, :username, :current_cake_order

    def index
      if logged_in?
        redirect_to customer_path(current_customer)
      else 
        render '/homepage'
     end
    end 
  
    def current_customer
      if session[:customer_id]
       Customer.find(session[:customer_id])
      else 
        redirect_to login_path
      end
    end 
    
    # def current_order
    #   if logged_in?
    #     @current_order = customer.cakes_orders
    #   else
    #     redirect_to login_path
    #   end 
    # end
      
    def logged_in?
      !!current_customer
    end 
      
    def authorize
      if !logged_in?
        redirect_to login_path
      end 
    end 
      
    def authenticate 
      if !current_customer
        redirect_to current_customer
      end 
    end 
   
end
