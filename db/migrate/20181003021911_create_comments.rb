class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :contents
      t.integer :post_id
      t.integer :reply_id

      t.timestamps null: false
    end
  end
end
