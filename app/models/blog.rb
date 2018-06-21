class Blog < ApplicationRecord
  has_attached_file :image, styles: { cover: "400x400", large: "600 x 600"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  before_validation :sanitize

  def sanitize
    self.title = self.title.strip
  end
end
