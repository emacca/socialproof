class AddSocialLinksToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :pinterest, :string
  end
end
