class CommentsController < ApplicationController
	def create
    @weigh_in = Weigh_in.find(params[:weigh_in_id])
    @comment = @weigh_in.comments.create!(comment_params)
    redirect_to @weigh_in
  end

  def comment_params
    params.require(:comment).permit(:comment)
  end

end