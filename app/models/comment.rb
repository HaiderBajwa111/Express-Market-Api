class Comment < ApplicationRecord
    belongs_to :product, foreign_key: :products_id
    belongs_to :user, foreign_key: :users_id
end
