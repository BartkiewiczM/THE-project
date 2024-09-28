class AddTagToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :tag, :string, null: true
  end
end
