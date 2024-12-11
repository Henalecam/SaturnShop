class ProductVariant < ApplicationRecord
  belongs_to :product
  validates :variant_name, :price, presence: true
end
