class CommentsController < ApplicationController
  before_action :set_post

  respond_to :html

  def create
    @comment = @post.comments.new(comment_params)
    @comment.save
    respond_with(@post, @comment, location: post_path(@post))
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
