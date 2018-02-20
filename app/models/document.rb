class Document < ActiveRecord::Base
  has_attached_file :csv_file
  validates_attachment :csv_file, presence: true
  do_not_validate_attachment_file_type :csv_file
end
