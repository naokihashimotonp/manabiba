class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :emaild, :email
  end
end
