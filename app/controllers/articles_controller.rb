class ArticlesController < ApplicationController
  before_action :set_article, only: [:edit, :update, :destroy]

  def index
    @articles = Article.all.order(id: "DESC").page(params[:page]).per(5)
    @categores = Category.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @posts = Article.find(params[:id])
    category = @posts.category_id
    @category = Category.find(category)
    @comment = Comment.new
    @comments = Comment.where(article_id: @posts.id)
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def cafemap
    @shops = Shop.all.order(id: "ASC").page(params[:page]).per(5)
  end

  def destroy
    if @article.user_id == current_user.id
        if @article.destroy
          redirect_to  root_path, notice: '商品を削除しました'
        end
    else
      render :index
      flash[:alert] = '商品削除に失敗しました'
    end
  end

  def search
    # binding.pry
    @articles = Article.where('name LIKE(?)',"%#{params[:keyword]}%")
  end




  private

  def article_params
    params.require(:article).permit(:category_id, :name, :desicription).merge(user_id: current_user.id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

end