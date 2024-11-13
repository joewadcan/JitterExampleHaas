require "rails_helper"

RSpec.describe DeetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/deets").to route_to("deets#index")
    end

    it "routes to #new" do
      expect(get: "/deets/new").to route_to("deets#new")
    end

    it "routes to #show" do
      expect(get: "/deets/1").to route_to("deets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/deets/1/edit").to route_to("deets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/deets").to route_to("deets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/deets/1").to route_to("deets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/deets/1").to route_to("deets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/deets/1").to route_to("deets#destroy", id: "1")
    end
  end
end
