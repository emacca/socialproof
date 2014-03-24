require 'spec_helper'

describe UsersController do

  describe "GET 'socialnew'" do
    it "returns http success" do
      get 'socialnew'
      response.should be_success
    end
  end

  describe "GET 'socialcreate'" do
    it "returns http success" do
      get 'socialcreate'
      response.should be_success
    end
  end

  describe "GET 'socialupdate'" do
    it "returns http success" do
      get 'socialupdate'
      response.should be_success
    end
  end

end
