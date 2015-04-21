class Image < ActiveRecord::Base
  mount_uploader :filename, ImageUploader
  belongs_to :pb_j
  validates_associated :pb_j
end
