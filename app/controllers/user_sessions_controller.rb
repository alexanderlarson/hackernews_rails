class UserSessionsController < ApplicationController
  def new
  end
  
  def create
    p params
    @user = User.find_by_email(params[:user][:email])
    session[:id] = @user.id
    redirect_to posts_path
  end

  def destroy
    session[:id] = nil
    redirect_to posts_path
  end
end
