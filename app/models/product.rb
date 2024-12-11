class Product < ApplicationRecord
  extend FriendlyId
  belongs_to :category
  has_many :product_variants, dependent: :destroy
  validates :name, presence: true
  friendly_id :name, use: :slugged
end
