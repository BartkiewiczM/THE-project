class ApplicationController < ActionController::Base
  before_action :set_user_data

  private

  def set_user_data
    # Assuming the current user is the first user
    @user = User.first

    # Monthly spending limit is stored in total_funds field
    @monthly_limit = @user.total_funds

    # Expenses calculation (based on the user_purchases and product prices)
    @total_expenses = @user.user_purchases.joins(:product).sum("products.price")
  end
end
