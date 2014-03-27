Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, "bOwOoiqzjlE56CtThcYQ", "1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik",
  {
    :authorize_params => {
      :use_authorize => 'true'
    }
  }
  provider :instagram, '2b6bad74e08c4a4d9724abae67b793d6', 'c2cee1fe304f4b1188e1a072a2988bca'

end