class CommentsController < ApplicationController
	
	def show
		@comment = Comment.find(params[:id])

	end

	def create
    @comment = Comment.new(comment_params)
    @comment.save
    @user = User.find(params[:user_id])
    redirect_to @user
  end

private

  def comment_params
    params.require(:comment).permit(:comment)
  end

end