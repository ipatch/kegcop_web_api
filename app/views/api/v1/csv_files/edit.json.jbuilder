json.array!(@csv_files) do |csv_file|
  json.extract! csv_file, :id, :csv_file_filename, :csv_file_id
  #json.url csv_file_url(csv_file, format: :json)
end