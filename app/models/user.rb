class User < ApplicationRecord
  has_many :user_purchases
  has_many :products, through: :user_purchases
  has_many :cart_items
end
