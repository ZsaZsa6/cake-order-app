class RemoveOrderIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :order_id
  end
end
