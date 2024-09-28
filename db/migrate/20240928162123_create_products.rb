class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.float :price
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
