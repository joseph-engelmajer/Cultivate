class CreateProductJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :product_joins do |t|
      t.integer :farm_id
      t.integer :product_id

      t.timestamps
    end
  end
end
