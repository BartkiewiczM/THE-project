class RenameCartToCartItem < ActiveRecord::Migration[7.2]
  def change
    rename_table :carts, :cart_items
  end
end
