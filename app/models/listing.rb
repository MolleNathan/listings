class Listing < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :user
  belongs_to :category
  has_many :comments
end
