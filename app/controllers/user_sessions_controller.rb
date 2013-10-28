class UserSessionsController < ApplicationController
  def new
  end
  
  def create
    @user = User.find_by_email(params[:user][:email])
    redirect_to posts_path
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_path
  end
end
