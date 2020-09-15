class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.string :description

      t.timestamps
    end
  end
end
