class AddTitleToCakes < ActiveRecord::Migration[6.0]
  def change
    add_column :cakes, :title, :string
  end
end
