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

  def destroy
    @comment= Comment.find(params[:id])
    if @comment.user_id == current_user.id
        if @comment.destroy
          redirect_to question_path(params[:question_id]), notice: 'コメントを削除しました'
        end
    else
      render :index
      flash[:alert] = 'コメント削除に失敗しました'
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
