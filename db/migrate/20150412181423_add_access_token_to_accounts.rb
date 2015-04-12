class AddAccessTokenToAccounts < ActiveRecord::Migration
  def up
    add_column :accounts, :access_token, :string, default: ""
    add_index :accounts, :access_token, unique: true
  end

  def down
  	remove_index :accounts, :access_token
  	remove_column :accounts, :access_token
  end
end
