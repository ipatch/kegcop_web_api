class AddDeviceTokenToAPIKeys < ActiveRecord::Migration
  def change
    add_column :api_keys, :device_token, :string
    add_index :api_keys, :device_token, unique: true
  end
end
