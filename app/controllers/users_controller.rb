class UsersController < ActionController::Base

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Yeeeee!!"
      redirect_to @user
    else
      render 'new'
    end
    session[:id] = @user.id
  end

  def show
    @user = User.find(params[:id])
  end

  #  def user_params
  #   params.require(:user).permit(:name, :email, :password)
  # end

end
