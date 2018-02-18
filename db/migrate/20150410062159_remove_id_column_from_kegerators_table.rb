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

	# NOTE: when removing a PK from a postgres table
	#... use `DROP` and not `REMOVE`
	# see, https://stackoverflow.com/a/40502370/708807

  def down
  	execute <<-SQL
  		ALTER TABLE "kegerators" DROP CONSTRAINT "kegerators_pkey"
  	SQL

 	remove_index :kegerators, :device_id #, unique: false

 	change_column :kegerators, :device_id, :string, null: true
 	add_column :kegerators, :id, :integer
  end

end
