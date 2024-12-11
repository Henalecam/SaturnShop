require 'rails_helper'

RSpec.describe ProductVariant, type: :model do
  it { should validate_presence_of(:variant_name) }
  it { should validate_presence_of(:price) }
  it { should belongs_to(:product) }

  describe '#some_specific_functionality' do
    it 'does something expected' do
      variant = ProductVariant.new(variant_name: 'Variant 1', price: 10.0)
      expect(variant.some_specific_functionality).to eq(expected_result)
    end
  end
end
