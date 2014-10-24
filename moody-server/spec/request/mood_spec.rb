require 'rails_helper'

RSpec.describe "Moods", type: :request do

  describe "listing" do
    it "is successful" do
      get '/moods'
      expect(response).to be_success
    end

    it "returns a json of the moods" do
      mood = FactoryGirl.create(:mood)
      get '/moods'
      expect(json.length).to eq(1)
      expect(json[0]["user_id"]).to eq(mood.user_id)
      expect(json[0]["emotion_id"]).to eq(mood.emotion_id)
    end
  end

  describe "create" do
    it "returns valid if user_id is present" do
      user = FactoryGirl.create(:user)
      post '/moods.json', { mood: { user_id: user.id } }
      expect(response).to be_success
    end

    it "stores an emotion_id"
    it "returns invalid if user_id is missing"
    it "returns invalid if emotion_id is missing"
  end

end
