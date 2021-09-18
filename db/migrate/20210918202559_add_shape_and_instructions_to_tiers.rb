class AddShapeAndInstructionsToTiers < ActiveRecord::Migration[6.0]
  def change
    add_column :tiers, :shape, :string
    add_column :tiers, :instructions, :text
  end
end
