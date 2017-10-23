class Page < ApplicationRecord

  def self.footer(lang)
    self.where('pages.lang = ?', lang)
  end

end
