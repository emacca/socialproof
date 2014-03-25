class AddTwitterSecretToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twittersecret, :string
  end
end
