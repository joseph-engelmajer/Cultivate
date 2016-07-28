class AddColumnToFarms < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :address, :string
  end
end
