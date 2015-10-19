class CsvFile < ActiveRecord::Base

validate :csv_extension
	# attachment :content_type => "text/csv"
	# http://ryanbigg.com/2009/04/how-rails-works-2-mime-types-respond_to/
	# attachment :csv, extension: "csv", content_type: "text/csv", raise_errors: true
	attachment :csv
private

# def csv_extension
#     unless csv_content_type == "text/csv"
#       errors.add :csv, "format must be csv"
#     end
#   end
	def csv_extension
		unless File.extname(csv_filename) == "csv"
			errors.add :csv, "format must be csv"
		end
	end
end