class AddEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :emaild, :string
  end
end
