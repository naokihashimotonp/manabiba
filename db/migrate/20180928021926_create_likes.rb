class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.timestamps null: false
    end
    # change_table :likes do |t|  # end
  end
end
