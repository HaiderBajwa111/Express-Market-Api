class Cart < ApplicationRecord
    has_one :promo_code, class_name:"PromoCode", foreign_key: 'carts_id'
    has_many :added_products
    has_many :products, through: :added_products
end
