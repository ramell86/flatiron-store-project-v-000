class CategoriesController < ApplicationController
  def index
    binding.pry
    @categories = Categories.all
    
  end

  def new
    @category = Category.new

  end
  def show
    @category = Category.find_by(:id => params[:id])
    
  end

end
