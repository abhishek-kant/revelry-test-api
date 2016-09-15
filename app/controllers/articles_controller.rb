class ArticlesController < ApplicationController
  def index
    @owner = Owner.friendly.find(params[:owner_id])
    @articles = @owner.articles.limit(15)
  end

  def show
    @article = Article.friendly.find(params[:id])
  end
end
