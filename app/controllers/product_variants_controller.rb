class ProductVariantsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    render json: @product.product_variants
  end

  def show
    @variant = ProductVariant.find(params[:id])
    render json: @variant
  end
end
