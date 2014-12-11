require 'rails_helper'

RSpec.describe "Responses", :type => :request do
  describe "GET /responses" do
    it "works! (now write some real specs)" do
      get responses_path
      expect(response.status).to be(200)
    end
  end
end
