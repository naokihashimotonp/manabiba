class AddPvCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :pv_count, :integer
  end
end
