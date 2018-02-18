class CsvFile < ActiveRecord::Base

	# paperclip
	has_attached_file :csv_file, default_url: "/public/system/uploads/missing.csv"
	# validates_attachment_content_type :csv_file, #content_type: /.*\z/
	validates_attachment :csv_file, presence: true, content_type: { content_type: "text/csv" }, size: { in: 0..10.kilobytes }

	validate :csv_size_validation, :if => "csv_file"
	# http://ryanbigg.com/2009/04/how-rails-works-2-mime-types-respond_to/
	
	# refile
	# attachment :csv_file, extension: "csv", content_type: "text/csv"

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
