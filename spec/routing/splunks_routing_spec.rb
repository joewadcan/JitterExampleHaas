require "rails_helper"

RSpec.describe SplunksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/splunks").to route_to("splunks#index")
    end

    it "routes to #new" do
      expect(get: "/splunks/new").to route_to("splunks#new")
    end

    it "routes to #show" do
      expect(get: "/splunks/1").to route_to("splunks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/splunks/1/edit").to route_to("splunks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/splunks").to route_to("splunks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/splunks/1").to route_to("splunks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/splunks/1").to route_to("splunks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/splunks/1").to route_to("splunks#destroy", id: "1")
    end
  end
end
