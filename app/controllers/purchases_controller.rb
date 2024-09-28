class PurchasesController < ApplicationController
  def create
    user = User.first

    UserPurchase.transaction do
      user.cart_items.each do |item|
        UserPurchase.create!(user_id: user.id, product_id: item.product_id)
        item.destroy!
      end
    end

    redirect_to root_path, notice: "Subscribed! Your order will be shipped as soon as possible."
  end
end
