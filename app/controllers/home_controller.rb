class HomeController < ApplicationController
  def index
    # Example account balance
    @account_balance = 150.75

    # Assuming the current user is the first user for now
    @user = User.first

    # Monthly spending limit stored in total_funds field.
    @monthly_limit = @user.total_funds

    # Total expenses calculation (based on the user_purchases and product prices).
    @total_expenses = @user.user_purchases.joins(:product).sum("products.price")

    # Calculate the percentage of spending.
    @spent_percentage = (@total_expenses.to_f / @monthly_limit * 100).round(2)
    @remaining_funds = (@monthly_limit - @total_expenses).round(2)

    # Active rentals (assuming user_purchases contains products currently rented).
    @active_rentals = @user.user_purchases.joins(:product)
  end
end
