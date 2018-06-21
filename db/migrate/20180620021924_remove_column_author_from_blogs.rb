class RemoveColumnAuthorFromBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :author, :string
  end
end
