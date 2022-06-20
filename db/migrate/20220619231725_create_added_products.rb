class CreateAddedProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :added_products do |t|
      t.references :product, foreign_key: {to_table: :products}
      t.references :cart, foreign_key: {to_table: :carts}
      t.integer :quantity

      t.timestamps
    end
  end
end
