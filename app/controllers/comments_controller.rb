class CommentsController < ApplicationController


  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    if @comment.save
      redirect_to question_path(@question.id)
    else
      render :create
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
