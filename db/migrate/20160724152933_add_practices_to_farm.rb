class AddPracticesToFarm < ActiveRecord::Migration[5.0]
  def change
    add_column :farms, :aquaponic, :boolean
    add_column :farms, :crop_rotation, :boolean
    add_column :farms, :certified_organic, :boolean
    add_column :farms, :low_input, :boolean
    add_column :farms, :hydroponic, :boolean
  end
end
