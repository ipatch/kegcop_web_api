class CsvFile < ActiveRecord::Base

# validate :csv_extension
validate :file_extension_validation, :csv_size_validation, :if => "csv_file"
	
	# def initialize(params = {})
	# 	@csv_file = params.delete(:csv_file)
	# 	super
	# 	if @csv_file
	# 		self.filename = sanitize_filename(@csv_file.original_filename)
	# 		self.content_type = @csv_file.content_type
	# 	end
	# end



	# attachment :content_type => "text/csv"
	# http://ryanbigg.com/2009/04/how-rails-works-2-mime-types-respond_to/
	# attachment :csv, extension: "csv", content_type: "text/csv", raise_errors: true
	attachment :csv_file, extension: "csv", raise_errors: true

private

	def file_extension_validation

	end

	NUM_BYTES_LIMIT = 4000
	def csv_size_validation
		# binding.pry
		# if (@csv_file.size.to_f / NUM_BYTES_LIMIT) > 2 
		# 	errors.add(:csv_file, 'File size cannot be over four kilobyte.')
		# end
		errors.add(:csv_file, "file size can't exceed 4KB") if csv_file.size > NUM_BYTES_LIMIT
		# binding.pry
	end

	def csv_file_id
	end
# def csv_extension
#     unless csv_content_type == "text/csv"
#       errors.add :csv, "format must be csv"
#     end
#   end
	# def csv_extension
	# 	unless File.extname(csv_filename) == "csv"
	# 		errors.add :csv, "format must be csv"
	# 	end
	# end
end