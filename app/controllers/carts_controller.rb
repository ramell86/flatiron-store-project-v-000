class CartsController < ApplicationController
    before_filter :authenticate_user!
    include UsersHelper
    
    def show
        @cart = Cart.find(params[:id])
    end

    def checkout
        @cart = Cart.find(params[:id])
        @cart.proceed_to_checkout
        redirect_to cart_path(@cart)
        current_user.remove_cart
    end

  
  
end
