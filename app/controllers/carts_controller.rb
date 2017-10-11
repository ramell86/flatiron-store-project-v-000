class CartsController < ApplicationController
    before_filter :authenticate_user!
    include UsersHelper
    
    
    
    def show
        @cart = Cart.find(params[:id])
    end

  
  
end
