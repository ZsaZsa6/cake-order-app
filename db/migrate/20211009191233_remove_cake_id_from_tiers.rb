class RemoveCakeIdFromTiers < ActiveRecord::Migration[6.0]
  def change
    remove_column :tiers, :cake_id, :integer
  end
end
