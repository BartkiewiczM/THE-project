class UsersController < ApplicationController
  def index
    # Assuming the current user is the first user
    @user = User.first

    # Monthly spending limit is stored in total_funds field for this example
    @monthly_limit = @user.total_funds

    # Expenses calculation (based on the user_purchases and product prices)
    @total_expenses = @user.user_purchases.joins(:product).sum("products.price")

    # Active rentals (assuming 'user_purchases' contains products currently rented)
    @active_rentals = @user.user_purchases.joins(:product)
  end

  # Action to update the monthly spending limit (total_funds)
  def set_limit
    @user = User.first # Assuming we only have one user for this example

    if params[:limit].present? && params[:limit].to_f >= 0
      @user.update(total_funds: params[:limit].to_f)
      redirect_to users_path, notice: 'Monthly spending limit updated successfully.'
    else
      redirect_to users_path, alert: 'Invalid limit. Please enter a valid number.'
    end
  end
end
