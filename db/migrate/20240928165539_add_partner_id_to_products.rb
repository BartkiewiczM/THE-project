class AddPartnerIdToProducts < ActiveRecord::Migration[7.2]
  def change
    add_column :products, :partner_id, :integer
  end
end
