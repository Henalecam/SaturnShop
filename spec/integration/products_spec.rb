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

    post 'Cria um novo produto' do
      consumes 'application/json'
      parameter name: :product, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          category_id: { type: :integer }
        },
        required: %w[name description category_id]
      }

      response '201', 'produto criado com sucesso' do
        let(:product) do
          { name: 'New Product', description: 'New Product Description', category_id: create(:category).id }
        end
        run_test!
      end

      response '422', 'dados inválidos' do
        let(:product) { { name: '', description: '', category_id: nil } }
        run_test!
      end
    end
  end

  path '/products/{id}' do
    parameter name: :id, in: :path, type: :string

    get 'Mostra um produto' do
      produces 'application/json'
      response '200', 'produto encontrado' do
        schema '$ref' => '#/components/schemas/Product'
        let(:id) { create(:product).id }
        run_test!
      end

      response '404', 'produto não encontrado' do
        let(:id) { 'invalid' }
        run_test!
      end
    end

    put 'Atualiza um produto' do
      consumes 'application/json'
      parameter name: :product, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          description: { type: :string },
          category_id: { type: :integer }
        },
        required: %w[name description category_id]
      }

      response '200', 'produto atualizado com sucesso' do
        let(:id) { create(:product).id }
        let(:product) do
          { name: 'Updated Product', description: 'Updated Description', category_id: create(:category).id }
        end
        run_test!
      end

      response '404', 'produto não encontrado' do
        let(:id) { 'invalid' }
        let(:product) do
          { name: 'Updated Product', description: 'Updated Description', category_id: create(:category).id }
        end
        run_test!
      end
    end

    delete 'Deleta um produto' do
      response '204', 'produto deletado com sucesso' do
        let(:id) { create(:product).id }
        run_test!
      end

      response '404', 'produto não encontrado' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
