class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(15)
  end

  def show
    @article = Article.friendly.find(params[:id])
  end
end
