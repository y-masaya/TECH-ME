class ArticleCommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.save
      redirect_to article_path(@article.id)
    else
      render :create
    end
  end

  def destroy
    @comment= Comment.find(params[:id])
    if @comment.user_id == current_user.id
        if @comment.destroy
          redirect_to article_path(params[:article_id]), notice: 'コメントを削除しました'
        end
    else
      render :index
      flash[:alert] = 'コメント削除に失敗しました'
    end
  end





  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, article_id: params[:article_id])
  end


end
