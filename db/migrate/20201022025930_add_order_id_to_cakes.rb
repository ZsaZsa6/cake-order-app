class AddOrderIdToCakes < ActiveRecord::Migration[6.0]
  def change
    add_column :cakes, :order_id, :integer
  end
end
