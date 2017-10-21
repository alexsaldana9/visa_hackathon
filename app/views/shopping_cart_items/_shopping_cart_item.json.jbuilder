json.extract! shopping_cart_item, :id, :product_id, :user_id, :prod_qty, :created_at, :updated_at
json.url shopping_cart_item_url(shopping_cart_item, format: :json)
