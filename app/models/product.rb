class Product < ApplicationRecord
    belongs_to :user, foreign_key: :owner_id
    has_many :comments, foreign_key: 'products_id'
    has_many :added_products
    has_many :carts, through: :added_products
    scope :all_products, ->{all}
    has_one_attached :image
end
