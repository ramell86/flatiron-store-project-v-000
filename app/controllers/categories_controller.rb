class CategoriesController < ApplicationController
  before_action :authenticate_user!
  def index
    binding.pry
    @categories = Categories.all
    
  end

  def new
    @category = Category.new

  end
  def show
    binding.pry
    @category = Category.find_by(:id => params[:id])
    
  end

end
