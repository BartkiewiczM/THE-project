class PurchasesController < ApplicationController
  def create
    user = User.first

    UserPurchase.create!(user_id: user.id, product_id: params[:product][:id])

    redirect_to root_path, notice: "Subscribed! Your order will be shipped as soon as possible."
  end
end
