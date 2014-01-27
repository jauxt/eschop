class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
  	@post = Post.find params[:post_id]
  	@comment = @post.comments.build comment_params
  	@comment.save
  	redirect_to post_url(@post)
  end

  private

  def comment_params
  	params[:comment].permit(:body)
  end

end
