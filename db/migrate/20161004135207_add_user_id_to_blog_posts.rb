class AddUserIdToBlogPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_posts, :user_id, :integer
  end
end
