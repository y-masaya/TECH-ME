class QuestionsController < ApplicationController
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
  end

  private
  def question_params
    params.require(:question).permit(:category_id, :title, :content).merge(user_id: current_user.id)
  end

end
