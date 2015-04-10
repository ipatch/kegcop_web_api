class CreateKegerators < ActiveRecord::Migration
  def change
    create_table :kegerators do |t|
    	t.string :name
    	t.string :device_id

    	t.timestamps
    end
  end
end
