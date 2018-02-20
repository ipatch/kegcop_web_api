class Document < ActiveRecord::Base
  has_attached_file :csv_file, 
    default_url: "#{Rails.root}/public/uploads/system/missing.csv",
    path: "#{Rails.root}/public/uploads/system/:basename.:extension",
    url: "#{Rails.root}/public/uploads/system/:basename.:extension"

  validates_attachment :csv_file, presence: true, size: { in: 0..10.kilobytes }, content_type: { content_type: ['text/csv', 'text/plain'] }
  # do_not_validate_attachment_file_type :csv_file
end
