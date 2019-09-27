class ArticlesController < ApplicationController
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
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
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
    @article = Article.find(params[:id])
    if @article.user_id == current_user.id
        if @article.destroy
          redirect_to  root_path, notice: '商品を削除しました'
        end
    else
      render :index
      flash[:alert] = '商品削除に失敗しました'
    end
  end

  private
  def article_params
    params.require(:article).permit(:category_id, :name, :desicription).merge(user_id: current_user.id)
  end

  def set_article
    @posts = Article.find(params[:id])
  end

end