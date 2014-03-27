json.array!(@authentications) do |authentication|
  json.extract! authentication, :id, :user_id, :provider, :uid, :index, :create, :destroy
  json.url authentication_url(authentication, format: :json)
end
