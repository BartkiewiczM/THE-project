class Product < ApplicationRecord
  has_many :user_purchases
  has_many :users, through: :user_purchases
  belongs_to :partner
end
