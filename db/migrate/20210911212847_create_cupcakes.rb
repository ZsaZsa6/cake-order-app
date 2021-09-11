class CreateCupcakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cupcakes do |t|
      t.string :flavor
      t.string :frosting
      t.string :filling
      t.string :sprinkles
      t.integer :product_id
    end
  end
end
