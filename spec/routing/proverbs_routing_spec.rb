require "rails_helper"

RSpec.describe ProverbsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/proverbs").to route_to("proverbs#index")
    end

    it "routes to #new" do
      expect(:get => "/proverbs/new").to route_to("proverbs#new")
    end

    it "routes to #show" do
      expect(:get => "/proverbs/1").to route_to("proverbs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/proverbs/1/edit").to route_to("proverbs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/proverbs").to route_to("proverbs#create")
    end

    it "routes to #update" do
      expect(:put => "/proverbs/1").to route_to("proverbs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/proverbs/1").to route_to("proverbs#destroy", :id => "1")
    end

  end
end
