class Page < ApplicationRecord

  def self.footer(lng)
    Page.where(['language = ?' ,lng])
  end
end
