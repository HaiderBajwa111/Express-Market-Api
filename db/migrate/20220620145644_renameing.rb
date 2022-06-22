class Renameing < ActiveRecord::Migration[6.1]
  def change
    rename_column :products, :PName, :name
    rename_column :products, :PStock, :stock
    rename_column :products, :Price, :price
    rename_column :products, :SearialNumber, :serial_number
    rename_column :promo_codes, :CodeName, :name
    rename_column :promo_codes, :valid_til, :valid_till
  end
end
