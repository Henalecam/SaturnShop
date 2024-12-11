class ProductVariant < ApplicationRecord
  belongs_to :product
  validates :variant_name, :price, :stock, presence: true
end
