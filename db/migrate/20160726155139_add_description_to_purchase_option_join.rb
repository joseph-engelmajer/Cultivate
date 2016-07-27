class AddDescriptionToPurchaseOptionJoin < ActiveRecord::Migration[5.0]
  def change
    add_column :purchase_option_joins, :description, :text
  end
end
