class MakeColumnIsAccountRootNotNull < ActiveRecord::Migration
  def up
  	change_column :accounts, :is_account_root, :boolean, null: false, default: false
  end

  def down
  	change_column :accounts, :is_account_root, :boolean, null: true
  end

end
