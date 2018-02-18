class CsvFile < ActiveRecord::Base

validate :csv_size_validation, :if => "csv_file"
	# http://ryanbigg.com/2009/04/how-rails-works-2-mime-types-respond_to/
	attachment :csv_file, extension: "csv"
	attachment :csv_file, content_type: "text/csv"

private

	def file_extension_validation
		# TODO: flesh out method.
	end

	NUM_BYTES_LIMIT = 4000
	def csv_size_validation
		# binding.pry
		errors.add(:csv_file, "file size can't exceed 4KB") if csv_file.size > NUM_BYTES_LIMIT
		# binding.pry
	end
end