class CartsController < ApplicationController
    before_filter :authenticate_user!
    include UsersHelper
    
    def show
        # binding.pry
        @cart = Cart.find(params[:id])
    end

    def checkout
        @cart = Cart.find(params[:id])
        @cart.proceed_to_checkout
        # binding.pry
        #current_user.remove_cart 
        redirect_to cart_path(@cart)
    end

  
  
end
