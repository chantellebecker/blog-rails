class AddBlogToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :blog_post_id, :integer
  end
end
