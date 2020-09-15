class CustomersController < ApplicationController
    before_action :set_user, only: [:profile, :show, :edit, :update]

    def profile
        @orders = @customer.orders
    end

    def new
        @customer = Customer.new        
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer.save
          params[:customer][:password]
          session[:customer_id] = @customer.id
          redirect_to customer_path(@customer)
        else 
          if Customer.find_by(username: params[:customer][:username]) || Customer.find(email: params[:customer][:email])
            flash[:alert] = "Looks like you've already signed up!"
            # redirect_to login_path
          else 
            render :new
          end 
        end 
      end 

      def show 
        @orders = @customer.orders
        @order = Order.find(params[:order_id]) if params[:order_id]
      end 





    private
    def customer_params
        params.require(:customer).permit(:username, :email, :password)
      end  
    
      def set_customer
        @customer = Customer.find(params[:id])
      end
    
end