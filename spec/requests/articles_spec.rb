require 'rails_helper'

RSpec.describe "Articles", :type => :request do
  describe "GET /articles" do
    it "returns a list of articles" do
      FactoryGirl.create_list(:article, 10)
      get articles_path
      articles = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(articles.length).to eq(10)
    end
  end

end
