json.extract! product, :id, :item, :price, :allergens, :quantity, :image, :created_at, :updated_at
json.url product_url(product, format: :json)
