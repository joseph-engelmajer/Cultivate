class AddDescriptionToPractice < ActiveRecord::Migration[5.0]
  def change
    add_column :practices, :description, :text
  end
end
