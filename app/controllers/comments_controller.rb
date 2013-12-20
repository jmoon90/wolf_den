class CommentsController < ApplicationController
  # /posts/:post_id/comments
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)

    # The line above does the same thing, but in one line :)
    # @comment = Comment.new(comment_params)
    # @comment.post = @post

    if @comment.save
      redirect_to post_path(@post), notice: "Cool story breux"
    else
      render template: "posts/show"
    end
  end

  protected 
  def comment_params
    params.require(:comment).permit(:email, :body)
  end
end
