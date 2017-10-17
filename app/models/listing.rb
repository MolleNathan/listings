class Listing < ApplicationRecord
  belongs_to :user, :category
  has_many :comment
end
