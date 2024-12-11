FactoryBot.define do
  factory :product_variant do
    variant_name { 'Variant Name' }
    price { 100 }
    stock { 10 }
    product { association :product }
  end
end
