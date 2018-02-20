class AddAttachmentCsvFileToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :csv_file
    end
  end

  def self.down
    remove_attachment :documents, :csv_file
  end
end
