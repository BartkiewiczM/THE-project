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
  end
end
