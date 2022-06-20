class AddRefrenceToProductsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :owner_id, :integer
    add_foreign_key :products, :users, column: :owner_id
  end
end
