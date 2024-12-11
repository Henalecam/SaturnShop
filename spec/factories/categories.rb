FactoryBot.define do
  factory :category do
    name { 'Category Name' }
    after(:create) do |category|
      create_list(:product, 3, category: category)
    end
  end
end
