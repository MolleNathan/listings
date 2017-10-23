class Listing < ApplicationRecord

  DEFAULT_THUMBNAIL = 'http://media.istockphoto.com/photos/pig-picture-id120534386?k=6&m=120534386&s=612x612&w=0&h=nsy1ZpqPri6EfAaAOYgjLjpT5GjHGkgtEq0YTRiG6UU='

  mount_uploader :picture, PictureUploader

  belongs_to :user
  belongs_to :category
  has_many :comments

  def thumbnail
    picture.url ? picture : DEFAULT_THUMBNAIL
  end
end
