class Listing < ApplicationRecord
  mount_uploader :picture, PictureUploader

  belongs_to :user
  belongs_to :category

  def self.search(args)
    #raise Listing.first.title.inspect
    Listing.where('title LIKE :query', query: "%#{args[:keywords]}%")
  end
end
