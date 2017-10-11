class StoreController < ApplicationController
  def index
    @categories = Category.all
    @items = Item.all
    @a_items = @items.available_items
  end
end