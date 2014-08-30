Rails.application.routes.draw do
  devise_for :users
  resources :creatives

  root 'creatives#index'
end
