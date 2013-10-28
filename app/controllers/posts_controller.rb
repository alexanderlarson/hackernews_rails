class PostsController < ActionController::Base
  
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.create(params[:post])
    @user = User.find(session[:id])
    @user.posts << @post
    redirect_to @post
  end

  def edit

  end

  def show
    @post = Post.find(params[:id])
  end

  # private
  #   def post_params
  #     params.require(:post).permit(:title, :text)
  #   end  
end
