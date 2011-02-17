require "spec_helper"

describe MicrohoodsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/microhoods" }.should route_to(:controller => "microhoods", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/microhoods/new" }.should route_to(:controller => "microhoods", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/microhoods/1" }.should route_to(:controller => "microhoods", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/microhoods/1/edit" }.should route_to(:controller => "microhoods", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/microhoods" }.should route_to(:controller => "microhoods", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/microhoods/1" }.should route_to(:controller => "microhoods", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/microhoods/1" }.should route_to(:controller => "microhoods", :action => "destroy", :id => "1")
    end

  end
end
