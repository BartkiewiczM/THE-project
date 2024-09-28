class User < ApplicationRecord
  has_many :user_purchases
  has_many :products, through: :user_purchases
end
