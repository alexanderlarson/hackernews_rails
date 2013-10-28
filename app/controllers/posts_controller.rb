class PostsController < ActionController::Base
  def new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def edit
  end

  private
    def post_params
      params.require(:post).permit(:title, :text)
    end  
end
