class AddOmniAuthColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :avatar_url, :string
    rename_column :users, :email, :screen_name
    add_index :users, :screen_name, :unique => true
  end
end
