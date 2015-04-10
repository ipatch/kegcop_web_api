class AddDeviceIdToAccountsTable < ActiveRecord::Migration
  def up
  	add_column :accounts, :device_id, :string
  	execute <<-SQL
  		alter table accounts
  			add constraint one_root_user_per_device_id unique (id, device_id);
  	SQL
  end

  def down
  	execute <<-SQL
  		alter table accounts
  			drop constraint if exists one_root_user_per_device_id;
  	SQL
  	remove_column :accounts, :device_id
  end
end
