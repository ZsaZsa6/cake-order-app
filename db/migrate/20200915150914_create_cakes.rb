class CreateCakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cakes do |t|
      t.integer :tiers
      t.string  :flavors
      t.string :fillings
      t.string :frosting
      t.integer :size
      t.timestamps
    end
  end
end
