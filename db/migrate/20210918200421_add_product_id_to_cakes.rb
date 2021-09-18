class AddProductIdToCakes < ActiveRecord::Migration[6.0]
  def change
    add_column :cakes, :product_id, :integer
  end
end
