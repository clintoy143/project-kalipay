class RemoveColumnFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :Avatar, :string
  end
end
