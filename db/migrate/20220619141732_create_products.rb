class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :PName
      t.integer :PStock
      t.integer :Price
      t.string :SearialNumber, null: false
      t.timestamps
    end
    add_index :products, :PName
  end
end