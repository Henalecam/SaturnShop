Rails.application.routes.draw do
  # Rota para exibir categorias
  resources :categories, only: %i[index show] do
    # Rota aninhada para listar produtos de uma categoria específica
    resources :products, only: [:index]
  end

  # Rotas para produtos e variantes
  resources :products, only: %i[index show] do
    resources :product_variants, only: %i[index show]
  end

  # Rota de status de saúde
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Define aa rota root, caso necessário
  # root "categories#index"
end
