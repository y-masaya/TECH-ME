class ArticlesController < ApplicationController
  def index
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    unless @article.save
      redirect_to new_article_path
    end
  end
end