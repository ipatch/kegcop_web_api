class RemoveIdColumnFromKegeratorsTable < ActiveRecord::Migration
  
  def up
  	remove_column :kegerators, :id
  	# want to make device_id PK

  	# how to set device_id to not null?
  	change_column :kegerators, :device_id, :string, null: false

  	# make device_id unique
  	add_index :kegerators, :device_id, unique: true

  	# run raw SQL on DB
  	execute <<-SQL
  		ALTER TABLE "kegerators" ADD PRIMARY KEY ("device_id")
  	SQL
  end

  def down
  	execute <<-SQL
  		ALTER TABLE "kegerators" REMOVE PRIMARY KEY ("device_id")
  	SQL

 	remove_index :kegerators, :device_id, unique: false

 	change_column :kegerators, :device_id, null: true

 	add_column :kegerators, :id
  end

end