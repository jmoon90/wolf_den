class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to '/posts'
    else
      binding.pry
      render :new
    end
  end

  protected 
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
