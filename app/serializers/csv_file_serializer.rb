# app/serializers/csv_file_serializer.rb

class CsvFileSerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :csv_file, :csv_file_file_name, :csv_file_content_type, :csv_file_file_size, :created_at, :updated_at
end
