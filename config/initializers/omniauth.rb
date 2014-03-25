Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "bOwOoiqzjlE56CtThcYQ", "1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik",
  {
    :authorize_params => {
      :use_authorize => 'true'
    }
  }

    provider :instagram, ENV['INSTAGRAM_ID'], ENV['INSTAGRAM_SECRET']

end