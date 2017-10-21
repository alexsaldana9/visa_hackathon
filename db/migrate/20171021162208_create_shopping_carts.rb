class CreateShoppingCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_carts do |t|
      t.string :item
      t.integer :quantity

      t.timestamps
    end
  end
end
