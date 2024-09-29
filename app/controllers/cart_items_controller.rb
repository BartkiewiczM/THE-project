class CartItemsController < ApplicationController
  def index
    @cart_items = User.first.cart_items
    @total_price = @cart_items.map(&:product).map(&:price).reduce(:+)

    @user = User.first
    @monthly_limit = @user.total_funds

    # Total expenses calculation (based on the user_purchases and product prices).
    @total_expenses = @user.user_purchases.joins(:product).sum("products.price")

    # Calculate the percentage of spending.
    @spent_percentage = (@total_expenses.to_f / @monthly_limit * 100).round(2)
    @remaining_funds = (@monthly_limit - @total_expenses).round(2)

    render :index, layout: "application"
  end

  def create
    user = User.first
    CartItem.create(user_id: user.id, product_id: params[:product][:id])
    redirect_to new_cart_item_path
  end

  def new
    render :create
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy!

    respond_to do |format|
      format.html { redirect_to cart_items_path }
      format.turbo_stream do
        @cart_items = User.first.cart_items
        @total_price = @cart_items.map(&:product).map(&:price).reduce(:+) || 0

        render turbo_stream: [
          turbo_stream.remove("cart_item_#{@cart_item.id}"),
          turbo_stream.replace("total-value", sprintf("%.2f", @total_price) + " zł"),
          turbo_stream.replace("tax-value", sprintf("%.2f", @total_price * 0.23) + " zł"),
          turbo_stream.replace("subtotal-value",  sprintf("%.2f", @total_price - @total_price * 0.23) + " zł"),
          @cart_items.count == 0 ? turbo_stream.replace("products-list", partial: "empty_list") : ""
        ]
      end
    end
  end
end
