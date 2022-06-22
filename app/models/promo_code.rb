class PromoCode < ApplicationRecord
    belongs_to :cart, foreign_key: :carts_id
end
