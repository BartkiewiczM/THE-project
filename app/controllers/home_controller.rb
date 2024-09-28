class HomeController < ApplicationController
  def index
    # Example account balance
    @account_balance = 150.75

    # Example subscription data
    @products = [
      { name: 'Netflix', cost: 15.99, billing_cycle: 'Monthly', next_payment: Date.today + 30 },
      { name: 'HBO Max', cost: 14.99, billing_cycle: 'Monthly', next_payment: Date.today + 28 },
      { name: 'Amazon Prime Video', cost: 12.99, billing_cycle: 'Monthly', next_payment: Date.today + 27 }
    ]

    @user = User.first # Assuming the current user is the first user for now.

    # Monthly spending limit is stored in the total_funds field.
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
