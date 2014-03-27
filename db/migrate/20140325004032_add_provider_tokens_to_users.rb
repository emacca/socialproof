class AddProviderTokensToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twittertoken, :string
    add_column :users, :instagramtoken, :string
  end
end
