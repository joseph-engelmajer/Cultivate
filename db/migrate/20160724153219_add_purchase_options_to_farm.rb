class AddPurchaseOptionsToFarm < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :csa, :boolean
    add_column :farms, :buying_club, :boolean
    add_column :farms, :cooperative, :boolean
    add_column :farms, :farm_stand, :boolean
    add_column :farms, :farmers_market, :boolean
    add_column :farms, :restaurant, :boolean
  end
end
