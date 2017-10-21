class AddShoppingCartToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :shoppingcart_id, :integer
  end
end
