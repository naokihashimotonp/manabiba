class AddContentsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :contents, :string
  end
end
