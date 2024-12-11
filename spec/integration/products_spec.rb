require 'swagger_helper'

RSpec.describe 'Products API', type: :request do
  path '/products' do
    get 'Lista todos os produtos' do
      produces 'application/json'

      response '200', 'produtos listados com sucesso' do
        schema type: :array, items: { '$ref' => '#/components/schemas/Product' }
        run_test!
      end
    end
  end
end
