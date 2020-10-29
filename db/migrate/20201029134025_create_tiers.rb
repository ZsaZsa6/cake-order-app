class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.string :flavor
      t.string :frosting
      t.string :filling
      t.integer :cake_id
      t.integer :size

      t.timestamps
    end
  end
end
