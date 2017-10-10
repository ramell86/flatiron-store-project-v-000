class CartsController < ApplicationController
    before_filter :authenticate_user!

    def index
      
      @carts = current_user.carts

    end
    def new
      @cart = Cart.new
    end
    def show
      

    end
end
