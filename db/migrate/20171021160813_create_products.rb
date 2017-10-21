class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :item
      t.decimal :price
      t.string :allergens
      t.integer :quantity
      t.string :image

      t.timestamps
    end
  end
end
