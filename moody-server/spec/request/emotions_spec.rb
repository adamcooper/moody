require 'rails_helper'

RSpec.describe "Emotions", type: :request do

  describe "listing" do
    it "is successful" do
      get '/emotions'
      expect(response).to be_success
    end

    it "returns a json of the emotion" do
      FactoryGirl.create(:emotion, name: 'happy')
      get '/emotions'
      expect(json.length).to eq(1)
      expect(json[0]["name"]).to eq('happy')
    end
  end

end
