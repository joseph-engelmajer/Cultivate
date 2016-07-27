class AddOptionDescriptionToPurchaseOptionJoin < ActiveRecord::Migration[5.0]
  def change
    add_column :purchase_option_joins, :option_description, :text, default:""
  end
end
