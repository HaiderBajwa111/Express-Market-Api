class Rename < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :CData, :data
  end
end
