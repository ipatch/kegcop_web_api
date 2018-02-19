class CsvFile < ActiveRecord::Base

	# paperclip
	has_attached_file :csv_file
	# validates_attachment :csv_file, presence: true, size: { in: 0..10.kilobytes }
	validates_attachment :csv_file, content_type: { content_type: ["application/octet-stream", "text/csv"] }

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
