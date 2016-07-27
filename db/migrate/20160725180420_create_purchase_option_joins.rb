class CreatePurchaseOptionJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_option_joins do |t|
      t.integer :farm_id
      t.integer :purchase_option_id

      t.timestamps
    end
  end
end
