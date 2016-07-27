class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.boolean :vegetables
      t.boolean :fruits
      t.boolean :dairy
      t.boolean :nuts
      t.boolean :honey
      t.boolean :legumes
      t.boolean :grains
      t.boolean :eggs
      t.boolean :meat

      t.timestamps
    end
  end
end
