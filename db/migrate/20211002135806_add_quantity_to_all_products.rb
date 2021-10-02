class AddQuantityToAllProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :donuts, :quantity, :integer, :default => 1
    add_column :cupcakes, :quantity, :integer, :default => 1
    
  end
end
