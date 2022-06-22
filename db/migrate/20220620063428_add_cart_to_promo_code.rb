class AddCartToPromoCode < ActiveRecord::Migration[6.1]
  def change
    add_reference :promo_codes, :carts, foreign_key: true
  end
end
