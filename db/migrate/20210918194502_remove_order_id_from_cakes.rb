class RemoveOrderIdFromCakes < ActiveRecord::Migration[6.0]
  def change 
    remove_column :cakes, :order_id, :integer
  end
end
