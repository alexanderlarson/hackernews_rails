class UsersController < ActionController::Base

  def new
  end

  def create
    @user = User.create(params[:user])
    redirect_to @user
  end
end
