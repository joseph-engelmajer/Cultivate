class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lat, :decimal
    add_column :users, :lng, :decimal
  end
end
