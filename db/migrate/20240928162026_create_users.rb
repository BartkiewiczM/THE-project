class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.float :used_funds
      t.float :total_funds
      t.string :name
      t.string :surname

      t.timestamps
    end
  end
end
