class CategoriesController < ApplicationController
  def index
    binding.pry
    @categories = Categories.all
  end

  def new
    @category = Category.new

  end

end
