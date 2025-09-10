class CommentsController < ApplicationController
  before_action :set_post

  def create
    @comment = @post.comments.build(comment_params)

    if @comment.save
      redirect_to @post, notice: 'Comment was successfully added!'
    else
      redirect_to @post, alert: 'There was an error adding your comment.'
    end
  end

  private

  def set_post
    @post = Post.find_by!(slug: params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :username)
  end
end
