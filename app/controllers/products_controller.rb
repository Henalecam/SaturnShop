# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def index
    q = Product.ransack(params[:q])
    @products = q.result.page(params[:page]).per(10)
    render json: @products
  end

  def show
    @product = Product.find(params[:id])
    render json: @product, include: :product_variants
  end
end
