class CreateCsvFiles < ActiveRecord::Migration
  def change
    create_table :csv_files do |t|

      t.timestamps null: false
    end
  end
end
