class ChangeTable < ActiveRecord::Migration[6.0]
  def change
    change_table :cakes do |t|
      t.rename :tiers, :number_tiers
  end
end
end
