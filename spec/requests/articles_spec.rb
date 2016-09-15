require 'rails_helper'

RSpec.describe "Articles", :type => :request do

  describe "GET /articles" do
    it "returns a list of articles" do
      owner = FactoryGirl.create(:owner)
      FactoryGirl.create_list(:article, 10, owner: owner)
      get owner_articles_path(owner)

      articles = JSON.parse(response.body)["articles"]

      expect(response).to have_http_status(200)
      expect(articles.length).to eq(10)
    end
  end

  describe "GET /article/:id" do
    it "returns an by name" do
      owner = FactoryGirl.create(:owner)
      article = FactoryGirl.create(:article, owner: owner)

      get article_path(article)
      article_from_response = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(article_from_response["id"]).to eq(article.id)
    end
  end

end
