require 'rails_helper'

RSpec.describe "Emotions", type: :request do

  describe "listing" do
    it "is successful" do
      FactoryGirl.create(:emotion, name: 'happy')

      get '/emotions'
      expect(response).to be_success
    end
  end

end
