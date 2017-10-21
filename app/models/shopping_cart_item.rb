class ShoppingCartItem < ApplicationRecord
  belongs_to :user

  has_many :products
end
