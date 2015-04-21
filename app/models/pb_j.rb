class PbJ < ActiveRecord::Base
  has_many :images, dependent: :destroy
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :images
  validates :images, presence: true
  searchkick
end
