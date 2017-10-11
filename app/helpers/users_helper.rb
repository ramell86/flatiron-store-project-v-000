module UsersHelper
  def set_user
    @user = User.find_by(:id => params[:id])
  end
end
