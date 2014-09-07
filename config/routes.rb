Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  get 'logout', to: 'sessions#destroy', as: 'logout', via: [:get, :post]
  devise_for :users
  resources :creatives

  root 'creatives#index'
end
