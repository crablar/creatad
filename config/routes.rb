Rails.application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  devise_for :users
  resources :creatives

  root 'creatives#index'
end
