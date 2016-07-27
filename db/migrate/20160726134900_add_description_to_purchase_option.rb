class AddDescriptionToPurchaseOption < ActiveRecord::Migration[5.0]
  def change
    add_column :purchase_options, :description, :text
  end
end
