class RemoveDescriptionFromPurchaseOptionJoin < ActiveRecord::Migration[5.0]
  def change
  	  	remove_column :purchase_option_joins, :description, :text
  end
end
