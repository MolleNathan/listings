class Page < ApplicationRecord

  def self.footer(lng)
    Page.where(['lng = ?', lng])
  end
end
