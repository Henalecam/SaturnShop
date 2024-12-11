FactoryBot.define do
  factory :product do
    name { 'Product Name' }
    description { 'Product Description' }
    category { association :category }
    after(:create) do |product|
      create_list(:product_variant, 3, product: product)
    end
  end
end
