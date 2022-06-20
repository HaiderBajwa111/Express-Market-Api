class Cart < ApplicationRecord
    has_one :promo_code, class_name:"PromoCode"
    has_many :added_products
    has_many :products, through: :added_products
end
