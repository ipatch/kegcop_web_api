# db/migrate/20131028210819_create_events.rb

class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.timestamps null: false
      t.string :address
      t.datetime :ended_at
      t.float :lat, null: false
      t.float :lon, null: false
      t.string :name, null: false
      t.datetime :started_at, null: false
      t.integer :user_id, null: false
    end

    # add_index :events, :place_id
    add_index :events, :user_id
  end
end