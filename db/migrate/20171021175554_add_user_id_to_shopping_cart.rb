class AddUserIdToShoppingCart < ActiveRecord::Migration[5.1]
  def change
    add_column :shopping_carts, :user_id, :integer
  end
end
