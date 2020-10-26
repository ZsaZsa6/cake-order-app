class CreateCakeOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :cake_orders do |t|
      t.integer :cake_id
      t.integer :order_id

      t.timestamps
    end
  end
end
