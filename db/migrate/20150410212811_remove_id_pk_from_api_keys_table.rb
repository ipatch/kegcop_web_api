class RemoveIdPkFromAPIKeysTable < ActiveRecord::Migration

	def up
		remove_column :api_keys, :id
		# want to make API token PK

		change_column :api_keys, :access_token, :string, null: false

		add_index :api_keys, :access_token, unique: true

		execute <<-SQL
			ALTER TABLE "api_keys" ADD PRIMARY KEY ("access_token")
		SQL
	end


	def down

		execute <<-SQL
			ALTER TABLE "api_keys" DROP CONSTRAINT api_keys_pkey
		SQL

		remove_index :api_keys, :access_token

		change_column :api_keys, :access_token, :string, null: true

		add_column :api_keys, :id, :integer

	end
end
