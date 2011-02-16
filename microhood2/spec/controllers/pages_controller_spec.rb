require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'profile'" do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'ideas'" do
    it "should be successful" do
      get 'ideas'
      response.should be_success
    end
  end

end
