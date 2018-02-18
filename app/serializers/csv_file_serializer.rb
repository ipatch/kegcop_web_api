class CsvFileSerializer < ActiveModel::Serializer
  attributes  :id, 
              :csv_file_id, 
              :csv_file_filename, 
              :csv_file_content_type
  

  # def file_path
  #   Refile.attachment_url(object, :file, filename: object.csv_file_filename)
  # end
end
