class CommentsController < ApplicationController
  def index

  end
  def new

  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end
  def show

  end
  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
