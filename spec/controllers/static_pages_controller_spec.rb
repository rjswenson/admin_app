require 'spec_helper'

describe StaticPagesController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

  describe "GET 'modify'" do
    it "returns http success" do
      get 'modify'
      response.should be_success
    end
  end

  describe "GET 'portal'" do
    it "returns http success" do
      get 'portal'
      response.should be_success
    end
  end

end
