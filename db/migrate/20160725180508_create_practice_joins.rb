class CreatePracticeJoins < ActiveRecord::Migration[5.0]
  def change
    create_table :practice_joins do |t|
      t.integer :farm_id
      t.integer :practice_id

      t.timestamps
    end
  end
end
