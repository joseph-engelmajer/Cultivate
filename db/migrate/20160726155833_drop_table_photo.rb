class DropTablePhoto < ActiveRecord::Migration[5.0]
  def change
    drop_table :photos
  end
end
