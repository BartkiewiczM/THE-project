class ProductsController < ApplicationController
  def index
    # Mock data for subscriptions
    @products = Product.all

    # Handle search by name
    if params[:query].present?
      @products = @products.select { |s| s[:name].downcase.include?(params[:query].downcase) }
    end

    # Handle filtering by tags
    if params[:tag].present?
      @products = @products.select { |s| s[:tag].eql?(params[:tag]) }
    end

    # Available tags for filtering
    @available_tags = Product.distinct.pluck(:tag)
  end
  def show
    @product = Product.find(params[:id])
  end
end
