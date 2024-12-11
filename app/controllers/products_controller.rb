class ProductsController < ApplicationController
  def index
    category = Category.find(params[:category_id])
    @products = category.products.includes(:product_variants)
    render json: @products, include: :product_variants
  end

  def show
    @product = Product.find(params[:id])
    render json: @product, include: :product_variants
  end
end
