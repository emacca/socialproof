require 'spec_helper'

describe PagesController do
  let(:user) do
    User.create(:email => "user.test@test.com", :password => "password", :password_confirmation => "password")
  end
  let(:client) { double }
  let(:tweets) { double }
  before do
    sign_in(user)
  end

  describe "GET 'tweets'" do
    it "renders json" do
      client = Twitter::REST::Client.new(:consumer_key => "CK", :consumer_secret => "CS", :access_token => "AT", :access_token_secret => "AS")
      stub_get('/1.1/statuses/home_timeline.json').to_return(:body => fixture('statuses.json'), :headers => {:content_type => 'application/json; charset=utf-8'})
      stub_request(:post, "https://bOwOoiqzjlE56CtThcYQ:1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik@api.twitter.com/oauth2/token").
      with(:body => "grant_type=client_credentials",
        :headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'Content-Type'=>'application/x-www-form-urlencoded; charset=UTF-8', 'User-Agent'=>'Twitter Ruby Gem 5.0.0.rc.1'}).
      to_return(:status => 200, :body => "", :headers => {})

      get :tweets
      expect(response).to be_success
    end
  end 

  describe "GET 'grams'" do
    
  end
end



