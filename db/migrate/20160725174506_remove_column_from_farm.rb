class RemoveColumnFromFarm < ActiveRecord::Migration[5.0]
  def change
    remove_column :farms, :aquaponic
    remove_column :farms, :crop_rotation
    remove_column :farms, :certified_organic
    remove_column :farms, :low_input
    remove_column :farms, :hydroponic
    remove_column :farms, :csa
    remove_column :farms, :buying_club
    remove_column :farms, :cooperative
    remove_column :farms, :farm_stand
    remove_column :farms, :farmers_market
    remove_column :farms, :restaurant
  end
end
