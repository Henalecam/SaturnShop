require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:product) }

  describe '#custom_method' do
    it 'returns expected result' do
      category = Category.new(name: 'Test Category')
      expect(category.custom_method).to eq('Expected Result')
    end
  end
end
