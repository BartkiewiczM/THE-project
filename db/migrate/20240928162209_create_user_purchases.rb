class CreateUserPurchases < ActiveRecord::Migration[7.2]
  def change
    create_table :user_purchases do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
