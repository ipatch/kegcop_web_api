class AddCsvFileToCsvFile < ActiveRecord::Migration
  def change
    add_column :csv_files, :csv_file_id, :string
    add_column :csv_files, :csv_file_filename, :string
    add_column :csv_files, :csv_file_content_type, :string
  end
end
