class AddCustomerIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer_id, :integer
  end
end
