class IsAccountRoot < ActiveRecord::Migration
  def up
  	add_column :accounts, :is_account_root, :boolean
  end

  def down
  	remove_column :accounts, :is_account_root
  end
end
