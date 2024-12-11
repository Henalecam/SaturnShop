Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users

  resources :categories, only: [:index, :show] do
    resources :products, only: [:index]
  end

  resources :products, only: [:index, :show] do
    resources :product_variants, only: [:index, :show]
  end

  root "categories#index"
end
