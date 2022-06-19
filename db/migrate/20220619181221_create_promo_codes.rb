class CreatePromoCodes < ActiveRecord::Migration[6.1]
  def change
    create_table :promo_codes do |t|
      t.string :CodeName
      t.date :valid_til
      t.float :discount

      t.timestamps
    end
  end
end
