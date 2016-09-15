require 'rails_helper'

RSpec.describe "Owners", :type => :request do
  describe "GET /owners" do
    it "should return a list of owners" do
      get owners_path
      expect(response).to have_http_status(200)

      FactoryGirl.create_list(:owner, 10)
      get owners_path
      response_json = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(response_json["owners"].length).to eq(10)
    end
  end

  describe "GET /owner/:id" do
    it "should return an owner by name" do
      owner = FactoryGirl.create(:owner)

      get owner_path(owner)
      owner_from_response = JSON.parse(response.body)

      expect(response).to have_http_status(200)
      expect(owner_from_response["id"]).to eq(owner.id)
    end
  end
end
