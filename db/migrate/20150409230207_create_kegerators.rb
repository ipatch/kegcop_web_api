class CreateKegerators < ActiveRecord::Migration
  def self.up
    create_table :kegerators do |t|
    end

    change_table :kegerators do |t|
      t.string :name
    	t.string :device_id
    	t.timestamps
    end
  end

  def self.down
    # remove_foreign_key :kegerators, :column => :device_id
    drop_table :kegerators

  end
end
