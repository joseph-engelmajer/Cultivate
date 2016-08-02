class AddProductDescriptionToFarms < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :product_description, :text
  end
end
