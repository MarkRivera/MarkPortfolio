class Blog < ApplicationRecord
  has_one_attached :image
  before_validation :sanitize

  def sanitize
    self.title = self.title.strip
  end
end
