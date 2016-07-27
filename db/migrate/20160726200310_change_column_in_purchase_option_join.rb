class ChangeColumnInPurchaseOptionJoin < ActiveRecord::Migration[5.0]
  def change
  	change_column :purchase_option_joins, :description, :text, default: ""
  end
end
