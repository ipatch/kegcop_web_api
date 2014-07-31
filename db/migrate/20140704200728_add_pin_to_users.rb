class AddPinToUsers < ActiveRecord::Migration
  def change
    # add_column :users, :pin, :string
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
  end
end
