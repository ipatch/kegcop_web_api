class AddCsvFileToCsvFile < ActiveRecord::Migration
  def change
    add_column :csv_files, :csv_file_id, :string
  end
end
