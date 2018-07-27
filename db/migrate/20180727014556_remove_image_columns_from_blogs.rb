class RemoveImageColumnsFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :image_file_name, :string
    remove_column :blogs, :image_content_type, :string
    remove_column :blogs, :image_file_size, :integer
  end
end
