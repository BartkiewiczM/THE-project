class RemoveTypeFromProduct < ActiveRecord::Migration[7.2]
  def change
    remove_column :products, :type, :string
  end
end
