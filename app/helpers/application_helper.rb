module ApplicationHelper
    def current_customer
    if session[:customer_id]
      @current_customer = Customer.find(session[:customer_id])
    end 
  end 

  def logged_in?
    !!current_customer
  end 
    
  def authorized
    if !logged_in?
      redirect_to login_path
    end 
  end 
end
