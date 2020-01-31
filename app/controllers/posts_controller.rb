class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:body, :image, :email, :date, :select).merge(user_id: current_user.id)
  end

end
