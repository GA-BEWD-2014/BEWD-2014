class CommentsController < ApplicationController
  def create
    if user_signed_in?
        safe_comment = params.require(:comment).permit(:post).merge(story_id: params[:story_id])
        @comment = current_user.comments.create safe_comment
        redirect_to @comment.story
    end
  end
end
