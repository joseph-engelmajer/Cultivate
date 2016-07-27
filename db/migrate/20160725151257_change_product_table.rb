class ChangeProductTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :products

    create_table :products do |t|
      t.string  :name
    end
  end
end
