# app/serializers/category_serializer.rb
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :products
end
