class AddRfidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :RFID, :string
  end
end
