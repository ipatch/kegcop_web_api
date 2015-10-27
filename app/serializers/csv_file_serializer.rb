class CsvFileSerializer < ActiveModel::Serializer
  attributes :id, :csv_file_id, :csv_file_filename, :csv_file_content_type
end
