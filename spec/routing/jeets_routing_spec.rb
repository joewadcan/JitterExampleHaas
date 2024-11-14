require "rails_helper"

RSpec.describe JeetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/jeets").to route_to("jeets#index")
    end

    it "routes to #new" do
      expect(get: "/jeets/new").to route_to("jeets#new")
    end

    it "routes to #show" do
      expect(get: "/jeets/1").to route_to("jeets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/jeets/1/edit").to route_to("jeets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/jeets").to route_to("jeets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/jeets/1").to route_to("jeets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/jeets/1").to route_to("jeets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/jeets/1").to route_to("jeets#destroy", id: "1")
    end
  end
end
