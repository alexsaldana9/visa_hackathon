class CreateShoppingCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :shopping_cart_items do |t|
      t.integer :product_id
      t.integer :user_id
      t.integer :prod_qty

      t.timestamps
    end
  end
end
