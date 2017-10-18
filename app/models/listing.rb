class Listing < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :user
  belongs_to :category
  has_many :comments

  def self.search(args)
    Listing.where("title LIKE :query OR description LIKE :query", query:"%#{args[:keywords]}%")
  end
end
