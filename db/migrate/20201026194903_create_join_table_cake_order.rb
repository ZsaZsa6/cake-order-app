class CreateJoinTableCakeOrder < ActiveRecord::Migration[6.0]
  def change
    create_join_table :cakes, :orders do |t|
      # t.index [:cake_id, :order_id]
      # t.index [:order_id, :cake_id]
    end
  end
end
