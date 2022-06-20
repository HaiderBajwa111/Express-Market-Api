class AddReferanceOfProductToComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :products, foreign_key: true
  end
end
