class StoreController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all
    @trimmed_items = @items.available_items

  end

end
