class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :carts
    

  # binding.pry
  def current_cart
  end
  def current_cart=(cart)
    user = User.find_by(:id => cart.user_id)
      user.carts.create
  end


 
end
