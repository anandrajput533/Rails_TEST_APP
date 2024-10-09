class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params.merge(user: current_user))

    if @comment.save
      redirect_to post_path(@post), notice: 'Comment added.'
    else
      redirect_to post_path(@post), alert: 'Unable to add comment.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
