class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(15)
  end
end
