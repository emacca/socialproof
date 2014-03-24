class PagesController < ActionController::Base
  def index
    @user = current_user

    @users = User.all
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "bOwOoiqzjlE56CtThcYQ"
      config.consumer_secret = "1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik"
      config.access_token = "2278255818-gJb4PfUOVuJDeryfa8xNovArc2bxbfZozAhv80Q"
      config.access_token_secret = "56Jy1uA01qJLsOyTUOmgpF9AQKOEtG4yVkyj4WFB2NCIT"
    end

    @data = client.user_timeline("#{@user.twitter}")

  end

end
