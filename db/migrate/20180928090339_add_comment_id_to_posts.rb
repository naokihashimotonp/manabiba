class AddCommentIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :comment_id, :string
  end
end
