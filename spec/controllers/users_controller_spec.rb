require 'spec_helper'

describe UsersController do

  let(:user) do
    User.create(:email => "user.test@test.com", :password => "password", :password_confirmation => "password")
  end
  before do
    sign_in(user)
  end

  describe "GET 'set_twitter_token'" do
    it "redirects to root_path" do
      request.env["omniauth.auth"] = {"credentials" =>  {"token" => "1", "secret" => "2"}}
      get :set_twitter_token
      expect(response).to redirect_to(root_path)
    end

    it "shows status code for redirect" do
      request.env["omniauth.auth"] = {"credentials" =>  {"token" => "1", "secret" => "2"}}
      get :set_twitter_token
      expect(response.status).to eq(302)
    end
  end 

  describe "GET 'set_instagram_token'" do
    it "redirects to root_path" do
      request.env["omniauth.auth"] = {"credentials" =>  {"token" => "1"}}
      get :set_instagram_token
      expect(response).to redirect_to(root_path)
    end
    it "redirects to root_path" do
      request.env["omniauth.auth"] = {"credentials" =>  {"token" => "1"}}
      get :set_instagram_token
      expect(response.status).to eq(302)
    end

  end

end
