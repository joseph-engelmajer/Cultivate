class AddColumnsToFarms < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :lat, :decimal
    add_column :farms, :lng, :decimal
  end
end
