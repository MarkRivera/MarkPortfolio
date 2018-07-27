class Blog < ApplicationRecord
  before_validation :sanitize

  def sanitize
    self.title = self.title.strip
  end
end
