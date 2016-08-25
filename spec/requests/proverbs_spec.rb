require 'rails_helper'

RSpec.describe "Proverbs", :type => :request do
  describe "GET /proverbs" do
    it "works! (now write some real specs)" do
      get proverbs_path
      expect(response).to have_http_status(200)
    end
  end
end
