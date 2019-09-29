class QuestionsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.all.order(id: "DESC").page(params[:page]).per(5)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    category = @question.category_id
    @category = Category.find(category)
    @comment = Comment.new
    @comments = Comment.where(question_id: @question.id)
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @question.user_id == current_user.id
        if @question.destroy
          redirect_to  root_path, notice: '商品を削除しました'
        end
    else
      render :index
      flash[:alert] = '商品削除に失敗しました'
    end
  end

  private
  def question_params
    params.require(:question).permit(:category_id, :title, :content).merge(user_id: current_user.id)
  end
  
  def set_product
    @question = Question.find(params[:id])
  end
end
