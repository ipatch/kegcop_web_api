class CreateCsvFiles < ActiveRecord::Migration
  def self.up
    create_table :csv_files do |t|
    end
    change_table :csv_files do |t|
      t.attachment :csv_file
      t.timestamps null: false
    end
  end

  def self.down
    remove_attachment :csv_files, :csv_file
    drop_table :csv_files
  end
end
