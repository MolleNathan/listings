class Comment < ApplicationRecord
  belongs_to :user, :listing
end
