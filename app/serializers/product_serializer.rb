# app/serializers/product_serializer.rb
class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :product_variants
end
