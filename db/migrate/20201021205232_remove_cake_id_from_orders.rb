class RemoveCakeIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :cake_id, :integer
  end
end
