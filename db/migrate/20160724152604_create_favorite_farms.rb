class CreateFavoriteFarms < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_farms do |t|
      t.integer :user_id
      t.integer :farm_id

      t.timestamps
    end
  end
end
