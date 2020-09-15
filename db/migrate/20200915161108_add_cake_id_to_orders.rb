class AddCakeIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :cake_id, :integer
  end
end
