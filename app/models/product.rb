class Product < ApplicationRecord
    belongs_to :user, foreign_key: :owner_id
    has_many :comments, foreign_key: 'products_id'
    has_many :added_products
    has_many :carts, through: :added_products
end
